//import UIKit
//
////Criando um Array de Strings vazio
//    var emptyArray: [String] = []
//    //Criando um Array de Strings e alimentando valores na criação
//    var shoppingList: [String] = ["Leite", "Pão", "Manteiga", "Açúcar"]
//    //Usando inferência
//    var inferredShoppingList: [String] = ["Leite", "Pão", "Manteiga", "Açúcar"]
//    emptyArray = ["bruno", "teste"]
//    print(emptyArray[1])
//    //Testando se um Array está vazio
//    if shoppingList.isEmpty {
//        print("A lista de compras está vazia")
//    } else {
//        print("A lista de compras NÃO está vazia")
//    }
//    //Recuperando o total de elementos do Array
//    print("Nossa lista de compras possui \(shoppingList.count) itens")
//    //Resultado: Nossa lista de compras possui 4 itens
//    shoppingList.append("testando") // adicionar um novo dado no array
//    shoppingList.insert("Café", at: 2)
//    shoppingList.insert("Teste5", at: 6) // adicionando um novo dado no array na posicao 2
//
//
////Removendo o elemento na posição 3 e atribuindo a uma variável
//    let banana = shoppingList.remove(at: 3)
//    //Removendo o primeiro e o último elementos
//    let milk = shoppingList.removeFirst()
//    let pear = shoppingList.removeLast()
//    //Removendo os 2 últimos e os 2 primeiros
//    shoppingList.removeLast(2)
//    shoppingList.removeFirst(2)
//    shoppingList.append("Café")
//    shoppingList.append("Açúcar")
//    print(shoppingList)
//    //Açúcar, Café
//    //Verificando se a lista contém um elemento
//    print(shoppingList.contains("Café"))    //true
//    //Pesquisando o índice de um elemento
//    //Note que o retorno desse método é um Int?, ou seja
//    //Para trabalharmos com este índice, precisamos
//    //desembrulhá-lo
//    if let coffeeIndex = shoppingList.index(of: "Açúcar") {
//        print("O índice do Açúcar no Array é \(coffeeIndex)")
//    }
//
//
//    var cafe = shoppingList[0]
//    print(cafe)
//
//

//Criando um dicionários cuja chave é uma String
    //e os valores (elementos) são String também
//    var states: [String: String] = ["PA": "Pará", "BA": "Bahia", "SP": "São Paulo", "RJ": "Rio de Janeiro"]
//    //Criando um dicionário vazio
//    var emptyStates: [String: String] = [:]
//    //Verificando se o dicionário está vazio
//    if states.isEmpty {
//        print("O dicionário está vazio")
//    }
//
//    //Recuperando o valor atribuído a uma chave
////    let rj = states["RJ"]
////    print(rj)   //Optional("Rio de Janeiro")
//    //Um dicionário sempre devolve Optional, por isso
//    //precisamos desembrulhar seu conteúdo para utilizar
//    if let rj = states["RJ"] { // rj é a chave, rio de jaineiro é o conteudo da chave
//        print("É \(rj)")   //Rio de Janeiro
//    }else{
//        print("nao é rio de janeiro")
//    }
//
//
////Inserindo elementos
//    states["MS"] = "Mato Grosso do Sul"
//    //Verificando se um elemento está presente no dicionário
//    if states["MS"] != nil { // se for diferente de null
//        print("Existe Mato Grosso do Sul no dicionário")
//    }
//    //2 formas de remover elementos
//    states["RJ"] = nil
//    states.removeValue(forKey: "BA")
//    print(states)

//Criando um Set de Strings
//    var movies: Set<String> = [
//        "Matrix",
//        "Vingadores",
//        "Jurassic Park",
//        "De Volta para o Futuro",
//    ]
//    //Crianto um set vazio
//    var movies2 = Set<String>()
//    //Inserindo elementos
//    movies.insert("Homem-Aranha: De Volta para o Lar")
//    print(movies.count) //5
//    //Perceba que o código abaixo não altera a quantidade
//    //de itens do Set pois ele não aceita itens repetidos.
//    movies.insert("Homem-Aranha: De Volta para o Lar")
//    print(movies.count) // 5
//    //Podemos saber se o item foi ou não inserido se atribuirmos a
//    //operação de inclusão a uma variável e verificarmos se
//    //a propriedade inserted é true
//    let result = movies.insert("Homem-Aranha: De Volta para o Lar") //ele ja foi inserido, nao pode ser dnv
//    print(result.inserted)
//    //Removendo elementos
//    movies.remove("Homem-Aranha: De Volta para o Lar")
//    print(movies)   //["Vingadores", "De Volta para o Futuro", "Matrix", "Jurassic Park"]
//    //Pecorrendo um Set
//    for movie in movies {
//        print(movie)
//    }
//    //Verificando se determinado elemento está contido no Set
//if movies.contains("Matrix") {
//        print("Matrix está na minha lista de filmes favoritos!!")
//    }
//    //Vamos criar um novo Set para realizarmos algumas operações
//    var myWifeMovies: Set<String> = [
//        "De Repente 30",
//        "Mensagem para você",
//        "Sintonia de Amor",
//        "De Volta para o Futuro",
//        "Jurassic Park"
//    ]
//    //Abaixo, estamos criando um novo Set (filmes favoritos)
//    //que será composto pela intersecção dos filmes presentes em
//    //movies com os presentes em myWifeMovies
//
//print(movies)
//print("estou aqui")
//    let favoriteMovies = movies.intersection(myWifeMovies) // pegar os iguais de cada e colocar em uma var
//    print(favoriteMovies)
//    //["De Volta para o Futuro", "Jurassic Park"]
//    //Criando um Set com todos os filmes
//    let allMovies = movies.union(myWifeMovies)
//    print(allMovies)
//    //["De Repente 30", "Mensagem para você", "Vingadores", "De Volta para o Futuro", "Jurassic Park", "Sintonia de Amor", "Matrix"]
//    //Removendo um Set de outro
//    movies = movies.subtracting(myWifeMovies)
//    print(movies)
    //["Vingadores", "Matrix"]


//  var array = ["banana", "maca", "pera", "cereja", "kiwi", "limao", "uva verde","uva"]
//  if array.contains("banana"){
//    print("tem banana");
//  }
//
//var a = 12
//    var b = 3
//    var sum = a + b             //15
//    var subtract = a - b        //9
//    var multiplication = a * b  //36
//    var division = a / b        //4
//    var módulus = a % b         //Resto da divisão: 0
//    var minusA = -a             //-12
//
//
//var z: Int = 1
//z += 1
//print(z)
//
//var yes = true, no = false
//    print(yes || no)   //true
//    print(!yes)        //false
//
//var grade = 7.5
//    var result = grade > 7.0 ? "aprovado" : "reprovado" // true : false
//    print(result)   //aprovado
//
//var age: Int?
//    let myAge = age ?? 0    //0
//    age = 25
//    let newAge = age ?? 0   //25
//
//let numbers = 1...10
//    for number in numbers {
//        print(number)   //Imprime de 1 a 10
//    }
//    let newNumbers = 1..<10
//    for number in newNumbers {
//        print(number)   //Imprime de 1 a 9
//    }


//if e else


//let number = 11
//    if number % 2 == 0 {
//        print("Ele é par")
//    } else {
//        print("Ele é ímpar")
//    }
//    var temperature = 25
//    var climate = ""
//    if temperature <= 0 {
//        climate = "Muito frio"
//    } else if temperature < 14 {
//        climate = "Frio"
//    } else if temperature < 21 {
//        climate = "Clima agradável"
//    } else if temperature < 30 {
//        climate = "Um pouco quente"
//    } else {
//        climate = "Muuuito quente"
//    }

//var a = 73
//var valor = 0
//
//valor = a / 100
//a = a % 100
//
//valor = a / 50
//a = a % 50
//
//valor = a / 20
//a = a % 20
//
//valor = a / 10
//a = a % 10
//
//valor = a / 5
//a = a % 5
//
//valor = a / 2
//a = a % 2
//
//valor = a / 1
//a = a % 1

//switch case

//var number = 7
//    switch number % 2{
//    case 0:
//        print("(number) é par")
//    default:
//        print("(number) é ímpar")
//    }
//    //Exemplo com vários cenários no mesmo case
//    let letter = "z"
//    switch letter {
//    case "a", "e", "i", "o", "u":
//        print("vogal")
//    default:
//        print("consoante")
//    }
//    //Exemplo com range de letras
//    switch letter {
//    case "a"..."f":
//        print("Você está na turma 1")
//    case "g"..."l":
//        print("Você está na turma 2")
//    case "m"..."r":
//        print("Você está na turma 3")
//    default:
//        print("Você está na turma 4")
//    }
//    //Range de números
//    let speed = 33.0
//    switch speed {
//    case 0.0..<20.0:
//        print("Primeira marcha")
//    case 20.0..<40.0:
//        print("Segunda marcha")
//    case 40.0..<50.0:
//        print("Terceira marcha")
//    case 50.0..<90.0:
//        print("Quarta marcha")
//    default:
//        print("Quinta marcha")
//    }

//
//
//import Foundation // framework
////Usando while
//    var life = 10
//    while life > 0 {
//        print("O jogador está com \(life) vidas")
//        life = life - 1
//    }
//    //Usando repeat while
//    var tries = 0
//    var diceNumber = 0
//    repeat {
//        tries += 1
//        diceNumber = Int(arc4random_uniform(7)+1)
//    } while diceNumber != 7
//    print("você tirou 6 após \(tries) tentativas")


//for in

//Percorrendo um Array
//    let students = [
//        "João Francisco",
//        "Pedro Henrique",
//        "Gustavo Oliveira",
//        "Janaina Santos",
//        "Francisco José"
//    ]
//    for student in students {
//        print("O aluno \(student) veio na aula de hoje!")
//    }
//    //Percorrendo uma sequência (range)
//    for day in 1...15 {
//        print("Estou no dia \(day)")
//    }
//    //Note abaixo que uma String também é uma coleção
//    let name = "Eric Alves Brito"
//    for letter in name {
//        print(letter)
//    }
//
//    //Vejamos como percorrer um dicionário,
//    //imprimindo sua chave e valor. Neste dicionário
//    //a chave é String e o valor é Int
//    let people = [
//        "Paulo": 25,
//        "Renata": 18,
//        "Kleber": 33,
//        "Eric": 39,
//        "Carol": 36
//    ]
//    //A variável person, abaixo, é uma tupla que recebe a chave
//    //(key) e o valor (value) de cada elemento do dicionário
//    for person in people {
//        print(person.key, person.value)
//    }
//    //Se quisermos, podemos inclusive decompor
//    //a tupla em variáveis
//    for (name, age) in people {
//        print(name, age)
//    }
//    //Podemos quebrar a execução de um laço usando
//    //o comando break
//    let grades = [10.0, 9.0, 8.5, 7.0, 9.5, 5.0, 22.0, 6.5, 10.0]
//    for grade in grades {
//        print(grade)
//        if grade < 0.0 || grade > 10.0 {
//            print("Nota inválida")
//            break
//        }
//    }


//fibonacci
var a: Int = 1;
var b: Int = 0;

var c: Int = 0;

var i = 1;
while(i <= 20){
    print(a)
    b = c // b == 1
    c = a // c == 1
    a = c + b // a == 2
    i = i + 1
}
        

