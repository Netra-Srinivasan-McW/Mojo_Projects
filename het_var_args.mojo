#def counting[*types : Intable](*args : *types) -> None:
#    var sum = 0
#    @parameter
#    for i in range(args.__len__()):
#        sum += Int(args[i])

#    print("sum:", sum)

#def main():
#    counting(1,2,3.4,5.6)

#from collections import OwnedKwargsDict
def print_nicely(**kwargs: Int):
    for ref key in kwargs.keys():
        print(key, "=", kwargs[key])

#prints:
# `a = 7`
# `y = 8`
def main():
    print_nicely(a=7, y=8)

#fn print_good(**kwargs : Int):
#    for i in range(kwargs.__len__()):
#        print(kwargs[i])

#def main():
#    print_good(a=7, y=8)