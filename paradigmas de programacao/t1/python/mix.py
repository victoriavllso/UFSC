
import time

def save_matrix_from_input_file(path: str) -> tuple[list[list[int]], dict[str, list[tuple[int, int]]], list[list[int]], int]:
    with open(path, "r") as file:
        lines = [line.strip() for line in file]

    fill_matrix = []
    reg_matrix = []
    region_mapping = {}
    back_regions = {}  # This will hold the region coordinates as you wanted
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
            start = i + 1
            # Read region names and store coordinates in back_regions
            for j in range(start, start + size):
                row = lines[j].split()
                for k, region in enumerate(row):
                    if region not in back_regions:
                        back_regions[region] = [(j - start, k)]
                    else:
                        back_regions[region].append((j - start, k))

            # Read and map region names to integers, and store in reg_matrix
            for j in range(start, start + size):
                row = []
                for region in lines[j].split():
                    if region not in region_mapping:
                        region_mapping[region] = next_region_id
                        next_region_id += 1
                    row.append(region_mapping[region])
                reg_matrix.append(row)

    return fill_matrix, back_regions, reg_matrix, size


def isSafe(fill_matrix, regions, size, x, y, num):
    # Find the region of num
    for region in regions:
        if (x,y) in regions[region]:
            reg = region
            break

    region_size = len(regions[reg])

    # Check if num is valid for the region
    if num > region_size:
        return False

    # Check if num is already in the region
    for i, j in regions[reg]:
        if fill_matrix[i][j] == num:
            return False
        
    # Check if num is already in a contiguos position
    if x > 0 and fill_matrix[x - 1][y] == num:
        return False
    if x < size - 1 and fill_matrix[x + 1][y] == num:
        return False
    if y > 0 and fill_matrix[x][y - 1] == num:
        return False
    if y < size - 1 and fill_matrix[x][y + 1] == num:
        return False
    
    #Check if positions under it in the same region are bigger than num, and over it are smaller than num
    for i,j in regions[reg]:
        if j == y: 
            if i < x:
                if fill_matrix[i][j] != 0 and fill_matrix[i][j] < num:
                    return False
            else:
                if fill_matrix[i][j] != 0 and fill_matrix[i][j] > num:
                    return False
                
    return True

def solveKojun(fill_matrix, regions, size, x, y ):
    if x == size - 1 and y == size:
        return True
    
    if y == size:
        x += 1
        y = 0
    
    if fill_matrix[x][y] > 0:
        return solveKojun(fill_matrix, regions, size, x, y + 1)
    
    for num in range(1, size + 1):
        if isSafe(fill_matrix, regions, size, x, y, num):
            fill_matrix[x][y] = num
            if solveKojun(fill_matrix, regions, size, x, y + 1):
                return True
            fill_matrix[x][y] = 0
    return False

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

def iterativeSolve(fill_matrix, reg_matrix, size, regions):
    counter = 0
    no_success = 0
    total_elements = size * size
    while regions != {}:
        for i in range(size):
            for j in range(size):
                counter += 1
                if fill_matrix[i][j] == 0:
                    if no_success > total_elements + 1:
                        return False
                    else:
                        result = try_fill(fill_matrix, reg_matrix, regions, i, j)
                    if len(result) == 1 and reg_matrix[i][j] in regions:
                        regions[reg_matrix[i][j]].remove(result[0])
                        if len(regions[reg_matrix[i][j]]) == 0:
                            del regions[reg_matrix[i][j]]
                        no_success = 0
                    else:
                        no_success += 1                        

if __name__ == "__main__":
    input_file = "T1/python/8.txt"
    fill_matrix, back_regions, reg_matrix, size = save_matrix_from_input_file(input_file)

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

    if not iterativeSolve(fill_matrix, reg_matrix, size, regions):
        solveKojun(fill_matrix, back_regions, size, 0, 0)
        #if solveKojun(fill_matrix, back_regions, size, 0, 0):
       #         pass
            #print(f"Execution time: {1000*(time.time() - start_time):.3f}ms")
            #for line in fill_matrix:
          #      print(line)
    
    #else:
        #print(f"Execution time: {1000*(time.time() - start_time):.3f}ms")
        #print("No solution found")
