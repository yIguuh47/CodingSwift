import UIKit

/*ARRAY*/

var numbers = [45, 73, 195, 53]//literal

var computedNumbers = [numbers[0]*numbers[1], numbers[1]*numbers[2], numbers[2]*numbers[3], numbers[3]*numbers[0] ]

var computedNum = 0

for i in numbers{
    computedNum = computedNum * numbers[i]
}
print(computedNum)
print(computedNumbers)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
print(anotherThreeDoubles)

var shoppingList = ["Eggs", "Milk"]
shoppingList.append("whater")
print(shoppingList)


/*DICIONARIO/MAPS*/
//São mutaveis

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
    //adicionando dado ao Dicionario
    stockTickers["WORK"] = "Slack Technologies Inc"
    
    //alterando valor do dicionario
    stockTickers["BOOM"] = "DMC Global Inc"
    
    //remover valor do dicionario
    stockTickers.removeValue(forKey: "BEN")

  
     //Don't modify this
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
    print(stockTickers)
}

exercise()
