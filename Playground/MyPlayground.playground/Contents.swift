//var age1 = 20
//    var age2 = 30
//    var sum = age1 + age2
//    age2 = 50
//    //Esta linha e a linha abaixo não serão executadas
//    //sum += age2
//    /*
//    //Todos esse bloco de código não será executado
//    var age3 = 15
//    sum = age2 + age3
//
//     /*
//     //Aqui temos um comentário de múltiplas linhas dentro
//     //de outro comentário de múltiplas linhas
//     age3 = 35
//     sum += age3
//     */
//
//    print(sum)
//    sum += 20
//    */
//    print(sum)
//    print(type(of: sum))
//
//var nome: String = "Isso é uma string com tipo explicito"
//var nome2 = "Isso é uma String sem tipo explicito"
//
//var firstName = "Eric"
//var lastName = "Carvalho"
//
//var y = 52, x = "Cachorro", z = 23.2123
//
////constante em swift é let
//
//let pi = 3.141592
//let gravity = 9.81
//
//var value1 = 500          //Aqui, a inferência é para Int
//    var value2: Int = 500     //Idêntico à linha acima
//    var myAge: UInt8 = 39   //Somente valores positivos
//    //Forma de mostrar o valor máximo aceito pelo tipo
//    //Válido para todos os tipos de Int (Int8, Int16, Int32, UInt8, etc)
//    print(Int.max)
//    //Forma de mostrar o valor mínimo aceito pelo tipo
//    print(Int.min)
//    print(UInt8.max) //
//    print(UInt8.min) // somente positivos
//var balance = 1500.75           //Double inferido automaticamente
//    var sallary: Double = 1200.50   //Double explícito
//    //Para usarmos Float, precisamos explicitar o tipo
//    var temperature: Float = 35.9
//
//var module: String = "Introdução ao Swift"
//    var schoolName = "FIAP"
//    //Note que letter, na linha abaixo, é uma String
//    //Devido à inferência de tipo
//    var letter = "A"
//    //Para usarmos Character, precisamos definir explicitamente
//    var gender: Character = "M"
//
//var text = "Este texto"
//    //Resultado:
//    //Este texto "quebra" em
//    //duas linhas
//    //O      gera uma tabulação
//    var text2 = "Nota:     10"
//    //Resultado:
//    //Nota:     10
//
//let studentGrade = 8.5
//    let studentName = "João"
//    let result = "aprovado"
//    let message = "O aluno \(studentName) tirou \(studentGrade) e está \(result)"
//    print(message)
//    //Resultado:
//    //O aluno João tirou 8.5 e está aprovado sempre colocar \(nomeDaVariavel)
//print("")
//let nationalAnthem = """
//    Ouviram do Ipiranga as margens plácidas
//    De um povo heroico o brado retumbante.
//
//    Joaquim Osório Duque-Estrada
//    """
//    //O resultado impresso será idêntico a String criada.
//
//print(nationalAnthem)
//
//var isApproved = true
//    var firstTime: Bool = false
//print("")
//let address: (String, Int, String) = ("Av. Paulista", 1106, "01311-000")
//    print("O nome da rua é \(address.0)")
//    print("O número é \(address.1)")
//    print("O CEP é \(address.2)")
//    print(address)
//
//print("\n")
//
//let address2: (street: String, number: Int, zipCode: String) = ("Av. Paulista", 1106, "01311-000")
//    print("O nome da rua é \(address2.street)")
//    print("O número é \(address2.number)")
//    print("O CEP é \(address2.zipCode)")
//
////streetName recebe o valor do adress.street
////muito comum
///*
// let streetName = address2.street
//     let streetNumber = address2.number
// */
//print("\n\n")
//let (streetName, streetNumber, streetZip) = address2
//    print("O número da rua é \(streetNumber)")
//    print("o CEP da rua é \(streetZip)")
//
//let (streetName2, _, streetZipcode2) = address2

//var driverLicense: String?
//    print(driverLicense)    //Resultado: nil
//var teste: String? // var - nome da var - se colocar: determina o tipo, se colocar = o xCode auto denomina
//
//var teste2 = "bruno"
//
//print(type(of: teste2))

//var driverLicense: String?
//    driverLicense = "6789877"
//    print(driverLicense)
//    //Resultado: Optional("6789877")

//desembaralhar a string
//var driverLicense: String?
//    driverLicense = "6789877"
//    print(driverLicense!)
    //Resultado: 6789877
//print(type(of: driverLicense!))
//var teste2: String = ""
//var driverLicense: String?
//    driverLicense = "6789877"
//    if let license = driverLicense { //verifica se o driverLicense existe valor, caso nao vai para o else
//        print("A carteira de motorista é \(license)")
//        teste2 = license
//    } else {
//        print("Esta pessoa não possui carteira de motorista")
//    }
//    //Resultado: Esta pessoa não possui carteira de motorista
//
//print(teste2)


//evitar
//var alias: String!
//    //a linha abaixo imprime Meu apelido é nil
//    print("Meu apelido é \(alias)")
////    alias = "Pelé"
//    //Imprime Meu apelido é PELÉ
//print("Meu apelido é \(alias.uppercased())")

 
var age: Int?
    let age2 = age ?? 0
    print(age2) //0
    age = 27
    let age3 = age ?? 0
    print(age3) //27

var weekDay: String?
    print(weekDay?.uppercased())  //nil
    weekDay = "Segunda"
print(weekDay?.uppercased())  //Optional("Segunda")

