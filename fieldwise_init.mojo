#@fieldwise_init
#struct sum(Copyable):
#    var a : Int
#    var b : Int
#
#    def printing(self):
#        print("Sum : ", self.a + self.b)

#without fieldwise_init
struct sum(Copyable):
    var a : Int
    var b : Int

    fn __init__(out self, a : Int, b : Int):
        self.a = a
        self.b = b

    def printing(self):
        print("Sum : ", self.a + self.b)

def main():
    var output = sum(5,6)
    output.printing()