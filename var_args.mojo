fn string_print(mut *strs :String) -> None:
    var str = String()
    for ref val in strs:
        str += val
    print("String in total : ", str)

def main():
    var a = String("Hi")
    var b = String(" Netra")
    var c = String("!")
    #string("Hi", " Netra", "!")    #Raises error since passing immutable string literal
    string_print(a,b,c)