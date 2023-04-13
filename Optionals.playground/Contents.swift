import UIKit

// nil = nulo
//var p1Username : String = nil

var p1Username : String? = nil //pode ser uma string

p1Username = "jackestribador"

p1Username = nil

//vai dar erro!!!
//print(p1Username!)//forçamos a exibição do conteudo

if (p1Username != nil) { //usamos para evitar erros
    print(p1Username!)
}

//COMO SWIFT É UMA LINGUAGEM SEGURA, DEVEMOS TER MUITO CUIDADO AO UTILIZAMOS ? E !, JÁ QUE ELES FORAM DESENVOLVIDOS PENSANDO NA SEGURANÇA DA LINGUAGEM!!!!

//MARK: - UNWRAPPING

//if let
if let safeName = p1Username {
    print("Name: \(safeName)")
} else {
    print("Name not found")
}

let date: Date? = Date()

//guard let
guard let safeTest = date else {
    print("stop execution and 'return'!!")
    throw NSError()
}

print(safeTest)

//foce unwrapping
var sena: String?
sena = "a"
print(sena!.count)

//nill operator
var number: String?
number = "3"
print(number?.first ?? "0")
