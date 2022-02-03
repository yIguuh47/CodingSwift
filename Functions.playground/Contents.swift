import UIKit

var i : Int
i = 0

func greeting(){
    //para i de 1 até 4 faça { print.. }
    for i in 1 ... 4{
        print("Hello!!")
    }
}

greeting()

func calculator() {
  let a = Int(readLine()!)!  //First input
  let b = Int(readLine()!)! //Second input
    
  add(n1: a, n2: b)
  subtract(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}

func add(n1: Int, n2: Int){ print(n1 + n2)}

func subtract(n1: Int, n2: Int) { print(n1 - n2)}

func multiply(n1: Int, n2: Int) { print(Double(n1) * Double(n2))}

func divide(n1: Int, n2: Int) { print(Double(n1) / Double(n2))}

calculator()
