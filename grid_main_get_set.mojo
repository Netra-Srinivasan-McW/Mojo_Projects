#from grid_struct_get_set import grid
from grid_glider_random import grid
def main():
    '''glider = [[0,1,0,0,0,0,0,0],
              [0,0,1,0,0,0,0,0],
              [1,1,1,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0],
              [0,0,0,0,0,0,0,0]] '''
    # start = grid(len(glider), len(glider[0]), glider^)
    start = grid.random(8,8)
    print(String(start))