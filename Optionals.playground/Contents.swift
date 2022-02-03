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

//Don't change this
var studentsAndScores = ["Amy": Int.random(in: 1 ... 100), "James": Int.random(in: 1 ... 100), "Helen": Int.random(in: 1 ... 100)]

func highestScore(scores: [String: Int]) {
  
  //Write your code here.
  if (scores["Amy"]! > scores["James"]! && scores["James"]! > scores["Helen"]!) {
    print("Amy: \(scores["Amy"]!)")
  } else if (scores["Amy"]! < scores["James"]! && scores["James"]! > scores["Helen"]!) {
    print("James: \(scores["James"]!)")
  } else if (scores["Amy"]! < scores["James"]! && scores["James"]! < scores["Helen"]!) {
    print("Helen: \(scores["Helen"]!)")
  } else {
    print("Error")
  }
    
}

highestScore(scores: studentsAndScores)

func highestScore2(scores: [String: Int]) {
  
  //Write your code here.
  print(scores.values.max()!)
    
}

highestScore2(scores: studentsAndScores)

func highestScore3(scores: [String: Int]) {
  
  //Write your code here.
    var maior = 0
    for (key, value) in scores {
        if maior < value {
            maior = value
        }
        print("\(key) = \(value)")
    }
    print("Maior: \(maior)")
}

highestScore3(scores: studentsAndScores)

