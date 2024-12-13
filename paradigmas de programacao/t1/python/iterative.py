
import time

def save_matrix_from_input_file(path: str) -> tuple[list[list[int]], list[list[int]], int]:
    with open(path, "r") as file:
        lines = [line.strip() for line in file]

    fill_matrix = []
    reg_matrix = []
    region_mapping = {}
    next_region_id = 0
    size = None

    for i in range(len(lines)):
        if lines[i] == "size":
            # Extract the size (e.g., 8 from "8 x 8")
            size = int(lines[i + 1].split()[0])
        elif lines[i] == "starting board":
            # Read the starting board
            for j in range(i + 1, i + 1 + size):
                fill_matrix.append(list(map(int, lines[j].split())))
        elif lines[i] == "regions":
            # Read and map regions to integers
            for j in range(i + 1, i + 1 + size):
                row = []
                for region in lines[j].split():
                    if region not in region_mapping:
                        region_mapping[region] = next_region_id
                        next_region_id += 1
                    row.append(region_mapping[region])
                reg_matrix.append(row)
            return fill_matrix, reg_matrix, size

    print("Error reading input file")
    return None, None, 0

def decide_vertical_possibilities(possibilities, fill_matrix, reg_matrix, i, j):
    n_free_under = 0
    n_free_over = 0
    n_free_out = 0
    under = [0, -1]
    over = [0, -1]

    for x in range(len(fill_matrix)):
        # Save closest numbers under and over element, and the distance to them
        if reg_matrix[x][j] == reg_matrix[i][j]:
            if x < i:
                if fill_matrix[x][j] != 0:
                    over = [fill_matrix[x][j], i - x]
                else:
                    n_free_over += 1

            if x > i:
                if fill_matrix[x][j] != 0 and under[1] == -1:
                    under = [fill_matrix[x][j], x - i]
                else:
                    n_free_under += 1

        for y in range(len(fill_matrix)):
            if reg_matrix[x][y] == reg_matrix[i][j] and y != j:
                n_free_out += 1

    if under[1] == -1:
        possibilities = possibilities[n_free_under:]
    else:
        possibilities = [x for x in possibilities if x > under[0]]
    if over[1] == -1:
        possibilities = possibilities[:len(possibilities) - n_free_over]
    else:
        possibilities = [x for x in possibilities if x < over[0]]

    #print(f"Vertical possibilities for ({i}, {j}): {possibilities}")

    return possibilities


def try_fill(fill_matrix, reg_matrix, regions, i, j):
    if reg_matrix[i][j] not in regions:
        return [0, 0]
    
    possibilities = regions[reg_matrix[i][j]]
    
    #print(f"Initial possibilities for ({i}, {j}): {possibilities}")

    possibilities = decide_vertical_possibilities(possibilities, fill_matrix, reg_matrix, i, j)

    #print(f"Possibilities with vertical restraints: {possibilities}")
    
    surroundings = [fill_matrix[i-1][j] if i > 0 else 0, fill_matrix[i][j-1] if j > 0 else 0, fill_matrix[i+1][j] if i < len(fill_matrix) - 1 else 0, fill_matrix[i][j+1] if j < len(fill_matrix) - 1 else 0]
    for x in surroundings:
        possibilities = [y for y in possibilities if y != x]

    #print(f"Possibilities with surroundings: {possibilities}")
    #print()

    if len(possibilities) == 1:
       fill_matrix[i][j] = possibilities[0]
       #print(f"Filled cell ({i}, {j}) with value {possibilities[0]}")
       return possibilities
    
    return possibilities

def try_harder(fill_matrix, reg_matrix, regions, i, j):
    all_possibilities = []

    possibility = try_fill(fill_matrix, reg_matrix, regions, i, j)

    for x in range(len(fill_matrix)):
        for y in range(len(fill_matrix)):
            if reg_matrix[x][y] == reg_matrix[i][j] and fill_matrix[x][y] == 0:
                all_possibilities.append([try_fill(fill_matrix, reg_matrix, regions, x, y), x, y][0])

    for element in possibility:
        count = sum(1 for lst in all_possibilities if element in lst)
        #print(f"Trying to fill ({i}, {j}), knowing possibilities for other cells = {all_possibilities}, being possibilities for position = {possibility} and element = {element} -> {count==1}")
        if count == 1:
            # print("Succeeded trying harder, game state:")
            # for line in fill_matrix:
            #     print(line)
            # print()
            fill_matrix[i][j] = element
            return [element]
    
    #Check for possibilities of sorrounding cells, and if there is only one element not in common with the rest, fill it
    all_possibilities = []
    if i > 0 and fill_matrix[i-1][j] == 0:
        all_possibilities.append([try_fill(fill_matrix, reg_matrix, regions, i-1, y), x, y][0])
    if j > 0 and fill_matrix[i-1][j] == 0:
        all_possibilities.append([try_fill(fill_matrix, reg_matrix, regions, x, j-1), x, y][0])
    if i < len(fill_matrix) - 1 and fill_matrix[i-1][j] == 0:
        all_possibilities.append([try_fill(fill_matrix, reg_matrix, regions, i+1, y), x, y][0])
    if j < len(fill_matrix) - 1 and fill_matrix[i-1][j] == 0:
        all_possibilities.append([try_fill(fill_matrix, reg_matrix, regions, x, j+1), x, y][0])
    
    counts = {}
    for element in possibility:
        counts[element] = sum(1 for lst in all_possibilities if element in lst)
    
    if counts == {}:
        return possibility
    element = min(counts, key=counts.get)
    fill_matrix[i][j] = element
    return [element]
                    
if __name__ == "__main__":
    input_file = "T1/python/" + input("Enter the input file name: ") + ".txt"
    fill_matrix, reg_matrix, size = save_matrix_from_input_file(input_file)

    start_time = time.time()
    regions = dict()
    for line in reg_matrix:
        for x in line:
            if x not in regions:
                regions[x] = []
            if x in regions.keys():
                regions[x].append(len(regions[x]) + 1)

    for i in range(size):
            for j in range(size):
                if fill_matrix[i][j] != 0:
                    regions[reg_matrix[i][j]].remove(fill_matrix[i][j])

    counter = 0
    no_success = 0
    total_elements = size * size
    while regions != {}:
        for i in range(size):
            for j in range(size):
                counter += 1
                if fill_matrix[i][j] == 0:
                    if no_success > total_elements + 1:
                        result = try_harder(fill_matrix, reg_matrix, regions, i, j)
                    else:
                        result = try_fill(fill_matrix, reg_matrix, regions, i, j)
                    if len(result) == 1 and reg_matrix[i][j] in regions:
                        regions[reg_matrix[i][j]].remove(result[0])
                        if len(regions[reg_matrix[i][j]]) == 0:
                            del regions[reg_matrix[i][j]]
                        no_success = 0
                    else:
                        no_success += 1                        
    
    print(f"Execution time: {1000*(time.time() - start_time):.3f}ms")

    print("Resulting board:")
    for line in fill_matrix:
        print(line)
