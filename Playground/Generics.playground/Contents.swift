func swapInts(_ a: inout Int, _ b: inout Int) {
        let tempA = a
        a = b
        b = tempA
    }
    var int1 = 20
    var int2 = 30
    swapInts(&int1, &int2)
    print(int1, int2)   //30, 20


//Método genérico
    func swapValues<T>(_ a: inout T, _ b: inout T) {
        let tempA = a
        a = b
        b = tempA
    }
    var name1 = "Jaqueline"
    var name2 = "Carlos"
    swapValues(&name1, &name2)
    print(name1, name2) //Carlos Jaqueline
    var value1: Double = 55.7
    var value2: Double = 28.9
    swapValues(&value1, &value2)
    print(value1, value2) //28.9 55.7
