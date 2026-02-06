def grid_str(rows : Int, cols : Int, grid : List[List[Int]]) -> String :
    str = String()
    for i in range(rows):
        for j in range(cols):
            if(grid[i][j]):
                str += "*"
            else:
                str += " "
        if(i != rows-1):
            str += "\n"
    return str

def main():
    glider = [[0,1,0,0,0,0,0,0],
              [0,0,1,0,0,0,0,0],
              [1,1,1,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0]]
    print(grid_str(len(glider), len(glider[0]), glider))