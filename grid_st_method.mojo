struct grid(Copyable, Stringable): #stringable trait
#struct grid(Copyable):  #without stringable trait
    var rows : Int
    var cols : Int
    var data : List[List[Int]]

    fn __str__(self) -> String: #Stringable trait
    #fn grid_fn(self) -> String: #without stringable trait
        str = String()
        for i in range(self.rows):
            for j in range(self.cols):
                if self.data[i][j] == 1:
                    str += "*"
                else:
                    str += " "
            str += "\n"
        return str

    fn __init__(out self, rows : Int, cols : Int, var data : List[List[Int]]):
        self.rows = rows
        self.cols = cols
        self.data = data^