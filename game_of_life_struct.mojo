import random

struct grid(Stringable, Copyable):
    var rows : Int
    var cols : Int
    var data : List[List[Int]]

    fn __init__(out self, rows : Int, cols : Int, var data : List[List[Int]]):
        self.rows = rows
        self.cols = cols
        self.data = data^

    @staticmethod
    fn random(rows : Int, cols : Int) -> Self:
        var data : List[List[Int]] = []
        for _ in range(rows):
            var row_data : List[Int] = []
            for _ in range(cols):
                random.seed()
                row_data.append(Int(random.random_si64(0,1)))
            data.append(row_data^)
        return Self(rows, cols, data^)

    fn evolve(self) -> Self:
        var new_gen : List[List[Int]] = []
        for row in range(self.rows):
            row_above = (row - 1) % self.rows
            row_below = (row + 1) % self.rows
            var row_data : List[Int] = []
            for col in range(self.cols):
                col_left = (col - 1) % self.cols
                col_right = (col + 1) % self.cols
                num_neighbours = (
                                  self[row_above, col_left] +
                                  self[row_above, col] +
                                  self[row_above, col_right] +
                                  self[row, col_left] +
                                  self[row, col_right] +
                                  self[row_below, col_left] +
                                  self[row_below, col] +
                                  self[row_below, col_right]
                                 )
                new_state = 0
                if new_state == 1 and (num_neighbours == 2 or num_neighbours == 3):
                    new_state = 1
                elif new_state == 0 and num_neighbours == 3:
                    new_state = 1
                else:
                    new_state = 0
                row_data.append(new_state)
            new_gen.append(row_data^)
        return Self(self.rows, self.cols, new_gen^)
    
    fn __getitem__(self, row : Int, col : Int) -> Int:
        return self.data[row][col]

    fn __setitem__(mut self, row : Int, col : Int, val : Int) -> None:
        self.data[row][col] = val
    
    fn __str__(self) -> String:
        str = String()
        for row in range(self.rows):
            for col in range(self.cols):
                if self[row, col]:
                    str += "*"
                else:
                    str += " "
            str += "\n"
        return str
