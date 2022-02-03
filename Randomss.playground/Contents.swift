import UIKit

var rint = Int.random(in: 0...3)
var rint2 = Int.random(in: 0..<3)

var rfloat = Double.random(in: 1..<3)
print(rfloat)

var s: String = "a vizinha ta na"

print(s.randomElement())
 
//CHALLENGE
let alphabet = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x" ]

let password : String = junt( arrayp: alphabet )
func junt (arrayp: Array<String>)-> String{
    var result: String = ""
    for _ in 0...5{
        result += arrayp.randomElement()!
    }
    return result
}

print(password)

//CHALLENGE2
let alph = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "ç", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "Ç", "1", "2", "3", "4" ,"5", "6", "7" ,"8", "9", "0", "!", ".", "?", ":" ]

let pass : String = junt( arp: alph )
func junt (arp: Array<String>)-> String{
    var resul: String = ""
    for _ in 0...8{
        resul += arp.randomElement()!
    }
    return resul
}
print(pass)
