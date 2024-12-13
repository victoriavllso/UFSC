
import time

def read_input(path: str) -> tuple[list[list[int]], list[list[int]], int]:
    with open(path, "r") as file:
        lines = [line.strip() for line in file]

    fill_matrix = []
    regions = dict()
    size = int(lines[1].split()[0])

    for i in range(len(lines)):
        # Save starting board as a matrix
        if lines[i] == "starting board":
            for j in range(i + 1, i + 1 + size):
                fill_matrix.append(list(map(int, lines[j].split())))
        
     # Save regions in a dictionary
        elif lines[i] == "regions":
            start = i + 1
            for j in range(start, start + size):
                row = lines[j].split()
                for k, region in enumerate(row):
                    if region not in regions:
                        regions[region] = [(j - start, k)]
                    else:
                        regions[region].append((j - start, k))


    return fill_matrix, regions, size

def print_board(fill_matrix):
    for row in fill_matrix:
        print(row)

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

if __name__ == "__main__":
    start_time = time.time()
    fill_matrix, regions, size = read_input("T1/python/10.txt")

    solveKojun(fill_matrix, regions, size, 0, 0)
    
    if solveKojun(fill_matrix, regions, size, 0, 0):
       print(f"Execution time: {1000*(time.time() - start_time):.3f}ms")
       print_board(fill_matrix)

    else:
       print(f"Execution time: {1000*(time.time() - start_time):.3f}ms")
       print("No solution exists")
