from game_of_life_struct import grid

def run_display(var Grid : grid):
    while(True):
        print(String(Grid))
        if(input("Would you like to continue? (Press q for quit and <Enter> to continue)") == 'q'):
            break
        Grid = Grid.evolve()

def main():
    rows = Int(input("Enter the number of rows : "))
    cols = Int(input("Enter the number of columns : "))
    start = grid.random(rows,cols)
    run_display(start^)