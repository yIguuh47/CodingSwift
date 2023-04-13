import UIKit
import Foundation

//MARK: - If Else

func loveCalculator(){
    let loveScore : Int = Int.random(in: 0 ... 100)
    
    if (loveScore > 80){
        print("Vocês se amam como Kanye ama Kayne")
    };
    if (loveScore > 40 && loveScore <= 80){
        print("Vocês andam juntos como Coca-Cola e Mentos")
    } else {
        print("Você ficará sozinho para sempre")
    }
}
print("\nLove Test 1")
loveCalculator()


var aYear =  2002

func isLeap(year: Int) {
  
  //Write your code inside this function.
    if (year % 400 == 0) {
        print("yes")
    } else if (year % 4 == 0 && year % 100 != 0) {
        print("yes")
    }else {
        print("no")
    }
    
}
print("\n-I forgot:")
isLeap(year: aYear)

var studentsAndScoresIf = ["Amy": Int.random(in: 1 ... 100), "James": Int.random(in: 1 ... 100), "Helen": Int.random(in: 1 ... 100)]

func highestScoreIf(scores: [String: Int]) {
    
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

//MARK: - Switch case

func loveCalculator2(){
    let loveScore2 : Int = Int.random(in: 0 ... 100)
    
    switch loveScore2 {
    case 81...100 : print("Vocês se amam como Kanye ama Kayne")
    case 41...80 : print("Vocês andam juntos como Coca-Cola e Mentos")
    case ...40 : print("Você ficará sozinho para sempre")
    default : print("Error")
    }
    
}
print("\nLoveTest2")
loveCalculator2()

////Don't change this
var aNumber =  Int.random(in: 1 ... 7)

func dayOfTheWeek(day: Int) {
  
  //Write your code inside this function.
  
  switch day {
    case 1 : print("Monday")
    case 2 : print("Tuesday")
    case 3 : print("Wednesday")
    case 4 : print("Thursday")
    case 5 : print("Friday")
    case 6 : print("Saturday")
    case 7 : print("Sunday")
    default : print("Error")
  }
  
}

print("\n-Day:")
dayOfTheWeek(day: aNumber)

//MARK: - For
var studentsAndScores = ["Amy": Int.random(in: 1 ... 100), "James": Int.random(in: 1 ... 100), "Helen": Int.random(in: 1 ... 100)]

func highestScore(scores: [String: Int]) {
  
    var maxScore: Int = 0
    print("\nValor:\(scores)")
    
    for (nami, score) in scores {
        validScore(score: score, maxScore: &maxScore)
    }
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

func highestScore2(scores: [String: Int]) {
  
  //Write your code here.
  print("\nMaximum Value \(scores.values.max()!)")
    
}

highestScore2(scores: studentsAndScores)

func highestScore3(scores: [String: Int]) {
  
    print()
    
  //Write your code here.
    var maior = 0
    for (key, value) in scores {
        if maior < value {
            maior = value
        }
        print("Key - Value:\(key) = \(value)")
    }
    print("\nMaior: \(maior)")
}

highestScore3(scores: studentsAndScores)

