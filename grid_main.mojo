from grid_struct import Grid

def grid_fn(grid : Grid) -> String:
    str = String()
    for i in range(grid.rows):
        for j in range(grid.cols):
            if grid.data[i][j]:
                str += "*"
            else:
                str += " "
        if i != grid.rows-1:
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
    hii = Grid(len(glider), len(glider[0]), glider^)
    print(grid_fn(hii))
    