import UIKit

//MARK: - ARRAYS

var numbers = [45, 73, 195, 53]//literal

var computedNumbers = [numbers[0]*numbers[1], numbers[1]*numbers[2], numbers[2]*numbers[3], numbers[3]*numbers[0] ]

var computedNum = 0

//for item in numbers{
//    computedNum = computedNum * numbers[item]
//}
print(computedNum)
print(computedNumbers)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
print(anotherThreeDoubles)

var shoppingList = ["Eggs", "Milk"]
shoppingList.append("whater")
print(shoppingList)

//sorted
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())//alphabetical order

//contains
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies)
print("Frozen belongs array?",bondMovies.contains("Frozen"))

let text : String = "The life is beautiful when you look up"
text.contains("beautiful")

//reversed
var presidents = ["Bush", "Obama", "Trump", "Biden"]
print("-Before:\(presidents)")
presidents.reverse()
print("-After:\(presidents)")


presidents.reverse()
print(presidents.first)
print(presidents.last)


//MARK: - DICTIONARIES
//Mutable

func exercise() {

    //Don't change this
    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc"
    ]
    
    //Write your code here.
    //adding data to Dictionary
    stockTickers["WORK"] = "Slack Technologies Inc"
    
    //changing Dictionary value
    stockTickers["BOOM"] = "DMC Global Inc"
    
    //remove Dictionary value
    stockTickers.removeValue(forKey: "BEN")

  
     //Don't modify this
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
    print(stockTickers)
    print(stockTickers.first)
//    print(stockTickers.last) not found
    
}

exercise()



//working with dictionary items
var studentsAndScores: [String: Int] = ["Amy": Int.random(in: 1 ... 100), "James": Int.random(in: 1 ... 100), "Helen": Int.random(in: 1 ... 100)]

func highestScore(scores: [String: Int]) {
  
    var maxScore: Int = 0
    print("Valor:\(scores)")
    for (nami, score) in scores {
        validScore(score: score, maxScore: &maxScore)
    }
    print(maxScore)
    for (nami, score) in scores {
        if maxScore == score {
            print("\(nami): \(score) It's the biggest")
        }
    }
}
    
func validScore(score: Int?, maxScore: inout Int) {
    if var scoreCurrent = score {
        if scoreCurrent > maxScore ?? 0 {
            maxScore = scoreCurrent
        }
    }
}

highestScore(scores: studentsAndScores)


//MARK: - MAPS

let names = ["Jorge", "Roger", "Alberto", "Jose", "Carlos"]
let lowercaseNames = names.map { $0.lowercased() }
// 'lowercaseNames' == ["Jorge", "Roger", "Alberto", "Jose", "Carlos"]
let letterCounts = names.map { $0.count }
// 'letterCounts' == [5, 5, 7, 4, 6]
