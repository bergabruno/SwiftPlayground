//////Sintaxe para criação de funções
////    /*
////     func nomeDaFuncao(parâmetro: Tipo) -> TipoDeRetorno {
////        //Códigos
////        return TipoDeRetorno
////     }
////    */
////    //Exemplo de uma função simples que não recebe
////    //parâmetros e não retorna nada
////    func printHello() {
////        print("Hello!!!!")
////    }
////    printHello()    //Hello!!!
////    //Função que aceita parâmetro
////    func say(message: String) {
////        print(message)
////    }
////    say(message: "Vamos criar funções em Swift")
////    //Função que aceita mais de um parâmetro e que retorna algo
////    func sumNumbers(a: Int, b: Int) -> Int{
////        return a + b
////    }
////    var result = sumNumbers(a: 10, b: 15)
////    print(result)   //15
//
//
////A função abaixo serve para darmos uma mensagem de
//    //boas vindas a alguém
//    func say(welcome message : String, to person: String) {
//        print("\(message) \(person)!")
//    }
//    say(welcome: "Seja bem-vindo", to: "aluno")
//    //Seja bem-vindo aluno!
//    //Removendo o nome externo do primeiro parâmetro
//    func say(_ message: String,to person: String) { //coloque os _ no nome externo
//        print("\(message) \(person)!")
//    }
//say("Olá",to:"Fabiana")//tanto faz colocar _: ou nao colocar nada
//    //Olá Fabiana!
//    //Removendo todos os parâmetros externos
//    func sumNumbers(_ number1: Int, _ number2: Int) -> Int {
//        return number1 + number2
//    }
//    print(sumNumbers(3, 7)) //10





//    func sum(_ a: Int, _ b: Int) -> Int {
//        return a + b
//    }
//    func subtract(_ a: Int, _ b: Int) -> Int {
//        return a - b
//    }
//    func divide(_ a: Int, _ b: Int) -> Int {
//        return a / b
//    }
//    func multiply(_ a: Int, _ b: Int) -> Int {
//        return a * b
//    }
//    //A função abaixo utiliza outra função como parâmetro
//    func applyOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
//        return operation(a, b)
//    }
//    let result = applyOperation(40, 20, operation: sum)
//    print(result)   //200
//
//
////Criando um "apelido" para (Int, Int) -> Int
//    typealias Op = (Int, Int) -> Int
//    //Método que retorna outro métido
//    func getOperation(_ operation: String) -> Op {
//        switch operation {
//        case "soma":
//            return sum
//        case "subtracao":
//            return subtract
//        case "multiplicacao":
//            return multiply
//        default:
//            return divide
//        }
//    }
//    //Abaixo, a variável operation receberá a função
//    //retornara pelo método getOperation
//    var operation = getOperation("multiplicacao")
//    print(operation(30, 15))





//Sintaxe de uma função
    /*
     func nomeDaFuncao(parâmetro: Tipo) -> TipoDeRetorno {
        //Códigos
        return TipoDeRetorno
     }
     */
    //Sintaxe de uma closure
    /*
      {(parâmetro: Tipo) -> TipoDeRetorno in
        //Códigos
        return TipoDeRetorno
     }
     */

//func applyOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
//        return operation(a, b)
//    }
//    //Implementando uma closure que realiza a operação
//    //de módulo
//    applyOperation(14, 5, operation: {(x: Int, y: Int) -> Int in
//        return x % y
//    })
//
////simplificando uma closure
////tira o tipo da var do x e y
//    applyOperation(14, 5, operation: {x, y -> Int in
//        return x % y
//    })
////tira o tipo do retorno
//    applyOperation(14, 5, operation: {x, y in
//        return x % y
//    })
//
//    applyOperation(14, 5, operation: {
//        return $0 % $1
//    })
//
//    applyOperation(14, 5, operation: {$0 % $1})


//let names = ["João", "Paulo", "Henrique", "Ana", "Beatriz", "Carla", "Caroline"]
//    //Aplicando map em names
//    let uppercasedNames = names.map({$0.uppercased()})
//    print(uppercasedNames)
//
//    print(type(of: uppercasedNames))
//    //["JOÃO", "PAULO", "HENRIQUE", "ANA", "BEATRIZ", "CARLA", "CAROLINE"]
//
//    //Aplicando filter em names
//    let filteredNames = names.filter({$0.count < 6})
//    print(filteredNames)
//    //["João", "Paulo", "Ana", "Carla"]

//Utilizando Reduce
//var transactions: [Double] = [500.0, -45.0, -70.0, -25.80, -321.72, 190.0, -35.15, -100]
//    //Sintaxe do reduce
//    //func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Double) throws -> Result) rethrows -> Result
//    let balance = transactions.reduce(0.0, {$0 + $1})
//print("Seu saldo é R$ \(balance)")
//    //Seu saldo é R$ 92.33


//func somar(somando n1: Int, valores n2: Int ) -> Int{
  //  return n1 + n2;
//}

//somar(1,valores: 3) // se eu colocar o parametro com nome externo e interno
//tenho que colocar o primeiro nome quando chamar a funcao


//var bruno: String?
////desembrulhando um opcional
//bruno = "Teste"
//
//if let brunin = bruno{
//    print(brunin)
//}else{
//    print("nada")
//}
