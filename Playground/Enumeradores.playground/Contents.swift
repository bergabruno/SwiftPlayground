////Definindo um enum
//    enum Compass {
//        case north
//        case east
//        case west
//        case south
//        case brunin
//    }
//    //Criando uma variável do tipo Compass
//var direction: Compass = .brunin
//
//    //Como Swift trabalha com inferência de tipo, podemos usar
//    // somente .valor, caso o tipo seja definido explicitamente
//
//    var direction2: Compass = .south
//print("Minha direção é \(direction)");
//print("Minha direcao é \(direction2)")
//    //Minha direção é north
//    //Enums são muito usados com switch para análise do valor
//    switch direction {
//    case .north:
//        print("Estamos indo para o norte")
//    case .south:
//        print("Estamos indo para o sul")
//    case .east:
//        print("Estamos indo para o leste")
//    case .west:
//        print("Estamos indo para o oeste")
//    case .brunin:
//        print("estamos no periodo de teste")
//    }
//    //Estamos indo para o norte
//
//
//
////Enum que define as posições das poltronas em um avião
////Veja que é possível atribuir um valor padrão a cada uma delas
//enum SeatPosition: String {
//    case aisle = "corredor", middle = "meio", window = "janela"
//    //case aisle = corredor
//    // case middle = meio
//    // case window = janela
//}
//var passengerSeat: SeatPosition = .aisle
////Para imprimir o valor padrão (que foi atribuido), usamos a propriedade rawValue
//print(passengerSeat.rawValue)   //janela
////Enum de Int com valores padrões
//enum Month: Int {
//    case january = 1, february, march, april, may, june, july, august, september, october, november, december
//}
//var currentMonth: Month = .july
//print("Estamos no mês \(currentMonth.rawValue) do ano")




//Criando um enum que representa medidas (Measure) e que
//possui valores associados (Associated Values)
enum Measure {
    case weight(Double) //neste caso, associaremos um Double
    case age(Int)       //aqui, um Int
    case size(width: Double, height: Double) //Uma tupla
}
//Criando uma variável Measure com o valor age (idade)
//e definido seu valor associado
let ageMeasure: Measure = .age(33)

//Agora, uma com o valor age e associando um Double
let weightMeasure: Measure = .weight(82)
//Abaixo, estamos associando uma tupla ao enum do tipo size
let sizeMeasure: Measure = .size(width: 0.6, height: 1.71)
//Para recuperar os valores, precisamos trabalhar
//usando switch, da seguinte forma

switch sizeMeasure {
case .weight(let weight):
    print("O seu peso é \(weight)")
case .age(let age):
    print("A sua idade é \(age)")
case .size(let size):
    print("As medidas são \(size.width)m de largura e \(size.height)m de altura")
}

switch ageMeasure {
case .weight(let weight):
    print("O seu peso é \(weight)")
case .age(let age):
    print("A sua idade é \(age)")
case .size(let size):
    print("As medidas são \(size.width)m de largura e \(size.height)m de altura")
}

switch weightMeasure {
case .weight(let weight):
    print("O seu peso é \(weight)")
case .age(let age):
    print("A sua idade é \(age)")
case .size(let size):
    print("As medidas são \(size.width)m de largura e \(size.height)m de altura")
}
//As medidas de tamanho são 0.6m de largura e 1.71m de altura
