import UIKit

// MARK: - Generic Function

var startDate: Date?
var finalDate: Date?

var firsDateString = "01/02/2012"
var secondDateString = "01/01/2011"
let dateFormat = DateFormatter()
dateFormat.dateFormat = "dd/MM/yy"
var firsDate = dateFormat.date(from: firsDateString)
var secondDate = dateFormat.date(from: secondDateString)

func updateHeaderDates() {
    print("Bateu")
}

//func simpleInterDates () {
//    guard let unwrapedStartDate = firsDate else { return }
//    var interDate = unwrapedStartDate
//
//    if var endDate = secondDate {
//
//        if interDate > endDate {
//            interDate = endDate
//            endDate = unwrapedStartDate
//
//            firsDate = interDate
//            secondDate = endDate
//            updateHeaderDates()
//        }
//    }
//}


//MARK: - Functions with return and parameters
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)") //returns a tuple and its parameters
// Prints "min is -6 and max is 109"



func tupleInterDates() {
    guard let unwrapedStartDate = firsDate else { return }
    var interDate = unwrapedStartDate
    if var endDate = secondDate {

        let dates = validateDate(initialDate: interDate, finalDatee: endDate)
        interDate = dates.initialDate
        endDate = dates.finalDatee
        print("Menor:\(interDate) /nMaior:\(endDate)")
    }

    func validateDate(initialDate: Date, finalDatee: Date) -> (initialDate: Date, finalDatee: Date){
        let unwrapedStartDate = initialDate
        if initialDate > finalDatee {

            let dates = (initialDate: finalDatee, finalDatee: unwrapedStartDate)
            startDate = initialDate
            finalDate = finalDatee
            updateHeaderDates()
            return dates
        }
        return (initialDate,  finalDatee)
    }
}

//MARK: - Functions with Parameter input-output
//In-out parameters are passed as follows:
//When the function is called, the value of the argument is copied.
//In the body of the function, the copy is modified.
//When the function returns, the copy’s value is assigned to the original argument.

func inOutInterDates() {
    guard let unwrapedStartDate = firsDate else { return }
    var interDate = unwrapedStartDate
    if var endDate = secondDate {
        
        validateDate(initialDate: &interDate, finalDatee: &endDate)
        print("Menor:\(interDate) /nMaior:\(endDate)")
        startDate = interDate
        finalDate = endDate
        updateHeaderDates()
    }
        
    func validateDate(initialDate: inout Date, finalDatee: inout Date){
        let unwrapedStartDate = initialDate
        if initialDate > finalDatee {
            
            initialDate = finalDatee
            finalDatee = unwrapedStartDate

        }
    }
}

inOutInterDates()


