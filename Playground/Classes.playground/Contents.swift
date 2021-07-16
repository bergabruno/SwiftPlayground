//struct RGBColor {
//
//    //Propriedades armazenadas
//    var red : Int
//    var green : Int
//    var blue : Int
//
//    //Métodos de classe
//    func printColor() {
//        print("""
//            Red: (red)
//            Green: (green)
//            Blue: (blue)
//            """)
//    }
//}
//
////Instanciando a struct RGBColor
//var rgbYellow = RGBColor(red: 255, green: 255, blue: 0)
//
////Acessando e Alterando uma propriedade de rgbYellow
//rgbYellow.red = 254



//class Person {
//
//    //Propriedades armazenadas
//    var name: String
//    var isMale: Bool
//    var age: Int
//    //Propriedade de classe (estática)
//    static let animalClass: String = "mamífero"
//
//    //Método construtor da classe
//    init(name: String, isMale: Bool, age: Int) {
//        self.name = name
//        self.isMale = isMale
//        self.age = age
//
//    }
//    var gender: String {
//        get {
//            if isMale {
//                return "masculino"
//            } else {
//                return "feminino"
//            }
//        }
//        set {
//            if newValue == "masculino" {
//                self.isMale = true
//            } else {
//                self.isMale = false
//            }
//        }
//    }
//
//    //Métodos de classe
//    func speak(sentence: String) {
//        if self.age < 3 {
//            print("gugu dada")
//        } else {
//            print(sentence)
//        }
//    }
//
//    func introduce() -> String {
//        return "Olá, meu nome é \(name)"
//    }
//
//    //Método de classe
//    class func getInfo() -> String {
//        return "Pessoa: \(Person.animalClass) que possui nome, sexo e idade" //Person.var so é possivel se a var for static
//
//    }
//}
////Instanciando a classe Person
//let eric = Person(name: "Eric Alves Brito", isMale: true, age: 2)
////Alterando uma propriedade de eric
//eric.age = 35
//
//print(eric.introduce())
//print(eric.speak(sentence: "teste"))
//
//let person = Person(name: "Paulo Ferreira", isMale: false, age: 34)
////Alterando o sexo utilizando gender
//person.gender = "masculino"
//print(person.isMale, person.gender)
////true masculino
//
//print(Person.animalClass)//mamífero
//print(Person.getInfo())//Pessoa: mamífero que possui nome, sexo e idade
//
//
//class Student: Person {
//        var rm: String
//
//    init(name: String, isMale: Bool, rm: String, age: Int) {
//            self.rm = rm
//        super.init(name: name, isMale: isMale, age: age)
//        }
//
//        override func introduce() -> String {
//            return "\(super.introduce()) e meu RM nesta escola é \(rm)"
//        }
//    }
//let student = Student(name: "Beatriz Brito", isMale: false, rm: "97663", age: 34)
//    print(student.introduce())
//    //Olá, meu nome é Beatriz Brito e meu RM nesta escola é 97663
//
//
//import Foundation
//    let name = "Eric Alves Brito"
//    extension String {
//        var initials: String {
//            let words = self.components(separatedBy: " ")
//            let firstLetters = words.map({String($0.first!)})
//            return firstLetters.joined()
//        }
//
//        func getVowelsCount() -> Int {
//            var total: Int = 0
//            let characterArray = Array(self)
//            for letter in characterArray {
//                let lowerLetter = String(letter).lowercased()
//                switch lowerLetter {
//                case "a", "e", "i", "o", "u":
//                    total += 1
//                default:
//                    break
//                }
//            }
//            return total
//        }
//    }
//    print("O nome \(name) tem \(name.getVowelsCount()) vogais")
//    //O nome Eric Alves Brito tem 6 vogais
//    print("As iniciais de \(name) são \(name.initials)")
//    //As iniciais de Eric Alves Brito são EAB
//
//
//var bruno = "Bruno Bergamasco de Azevedo"
//
//bruno.getVowelsCount()
//bruno.initials


//class File {
//        let name: String
//        let ext: String
//        let size: Double
//        init(name: String, ext: String, size: Double) {
//            self.name = name
//            self.ext = ext
//            self.size = size
//        }
//    }
//    class Doc: File {
//        init(name: String, size: Double, animated: Bool) {
//            super.init(name: name, ext: "doc", size: size)
//        }
//    }
//    class Png: File {
//        init(name: String, size: Double) {
//            super.init(name: name, ext: "png", size: size)
//        }
//    }
//    class Mov: File {
//        init(name: String, size: Double) {
//            super.init(name: name, ext: "mov", size: size)
//        }
//    }
//    class Mp3: File {
//        init(name: String, size: Double) {
//            super.init(name: name, ext: "mp3", size: size)
//        }
//    }


class File {
        let name: String
        let ext: String
        let size: Double
        init(name: String, ext: String, size: Double) {
            self.name = name
            self.ext = ext
            self.size = size
        }
    }
    protocol Sizeable {
        var width: Int {get set} //largura
        var height: Int {get set} //altura
    }
    protocol Animatable {
        var duration: Double {get set}
        func play()
        func stop()
    }
    class Doc: File {
        init(name: String, size: Double) {
            super.init(name: name, ext: "doc", size: size)
        }
    }
    class Png: File, Sizeable {
        var width: Int
        var height: Int
        
        init(name: String, size: Double, width: Int, height: Int) {
            self.height = height
            self.width = width
            super.init(name: name, ext: "png", size: size)
        }
    }
    class Mov: File, Sizeable, Animatable {
        var width: Int
        var height: Int
        var duration: Double
        
        func play() {
            print("Vídeo está tocando")
        }
        
        func stop() {
            print("Vídeo está parado")
        }
        init(name: String, size: Double, width: Int, height: Int, duration: Double) {
            self.height = height
            self.width = width
            self.duration = duration
            super.init(name: name, ext: "mov", size: size)
        }
    }
    class Mp3: File, Animatable {
        var duration: Double
        func play() {
            print("Tocando a música")
        }
        
        func stop() {
            print("Interrompendo a música")
        }
        
        init(name: String, size: Double, duration: Double) {
            self.duration = duration
            super.init(name: name, ext: "mp3", size: size)
        }
    }

//Criando os arquivos
    var pngFile = Png(name: "foto", size: 1.5, width: 2000, height: 1200)
    var movFile = Mov(name: "video", size: 250.0, width: 1280, height: 720, duration: 600)
    var mp3File = Mp3(name: "musica", size: 3.2, duration: 240)
    var docFile = Doc(name: "Documento", size: 32.5)
    //Criando array de File
    let files: [File] = [pngFile, movFile, mp3File, docFile] //let nomeDaVar: [tipoVar] (tipo File)


    //Varrendo o array e verificando se o arquivo é Animatable
    //Caso seja, iremos rodar o arquivo. Para isso, tratamos
    //como Animatable e chamamos o método play()
    for file in files {
        
        //Abaixo, verificamos se o objeto file é do tipo
        //Animatable utilizando a palavra reservada is
        if file is Animatable {
            print("Tocando o arquivo \(file.name).\(file.ext)")
            
            //file.play()
            //Não adianta executar da forma acima por que file é
            //do tipo File e este tipo não possui o método
            //play(). Para isso, precisamos tratá-lo como sendo
            //um Animatable. O nome desta técnica é Type Casting,
            //ou apenas Cast.
            
            (file as! Animatable).play()
        }
    }
