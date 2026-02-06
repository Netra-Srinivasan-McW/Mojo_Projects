from grid_st_method import grid

def main():
    glider = [[0,1,0,0,0,0,0,0],
              [0,0,1,0,0,0,0,0],
              [1,1,1,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0]]
    start = grid(len(glider), len(glider[0]), glider^)
    print(String(start))    #use of stringable trait
    #print(start.grid_fn()) #without stringable trait
