trait intro_trait:
    fn method1(self, x : Int) -> None: ...
    fn method2(self, name : String) -> String:
        return "\nI am " + name + "!"

@fieldwise_init
struct structure(intro_trait):
    fn method1(self, x : Int) -> None:
        print("This is value ", x)
    
    #cannot be defined like this mojo does not support
    
fn use_trait[T : intro_trait](x : T):
    x.method1(55)
    print(x.method2("Bujji.."))
    print("\nThank you!!")

def main():
    var instance = structure()
    use_trait(instance)