import UIKit

/*IF-ELSE*/

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

loveCalculator()


//Don't change this
/*var aYear =  Int(readLine()!)!

func isLeap(year: Int) {
  
  //Write your code inside this function.
    if (year % 400 == 0) {
        print("yes")
    } else if (year % 4 == 0 && year % 100 != 0) {
        print("yes")
    }else {
        print("no")
    }
    
}*/

/*SWITCH-CASE*/

func loveCalculator2(){
    let loveScore2 : Int = Int.random(in: 0 ... 100)
    
    switch loveScore2 {
    
    case 81...100 : print("Vocês se amam como Kanye ama Kayne")
    case 41...80 : print("Vocês andam juntos como Coca-Cola e Mentos")
    case ...40 : print("Você ficará sozinho para sempre")
    default : print("Error")
            
    }
    
}

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

dayOfTheWeek(day: aNumber)
