import random
# note : grid_main_get_set.mojo is the main function for this 
struct grid(Stringable, Copyable):
    var rows : Int
    var cols : Int
    var data : List[List[Int]]

    @staticmethod
    fn random(rows : Int, cols : Int) -> Self:
        var data : List[List[
            Int]]  = []
        for _ in range(rows):
            var row_data : List[Int] = []
            for _ in range(cols):
                random.seed()
                row_data.append(Int(random.random_si64(0,1)))
            data.append(row_data^)
        return Self(rows, cols, data^)

    fn __init__(out self, rows : Int, cols : Int, var data : List[List[Int]]):
        self.rows = rows
        self.cols = cols
        self.data = data^

    fn __str__(self) -> String:
        str = String()
        for i in range(self.rows):
            for j in range(self.cols):
                if self[i, j]:
                    str += "*"
                else:
                    str += " "
            str += "\n"
        return str

    fn __getitem__(self, row : Int, col : Int) -> Int:
        return self.data[row][col]
    fn __setitem__(mut self, row : Int, col : Int, value : Int):
        self.data[row][col] = value