struct grid(Stringable, Copyable):
    var rows : Int
    var cols : Int
    var data : List[List[Int]]

    fn __init__(out self, rows : Int, cols : Int, var data : List[List[Int]]):
        self.rows = rows
        self.cols = cols
        self.data = data^

    fn __getitem__(self, row : Int, col : Int) -> Int:
        return self.data[row][col]
    fn __setitem__(mut self, row : Int, col : Int, value : Int) -> None:
        self.data[row][col] = value

    fn __str__(self) -> String:
        str = String()
        for row in range(self.rows):
            for col in range(self.cols):
                if self[row, col] == 1:
                    str += "*"
                else:
                    str += " "
            str += "\n"
        return str               