import UIKit
import Foundation

var firstDateString = "03/02/2023"
var finalDateString = "01/02/2023"
let dateFormat = DateFormatter()
dateFormat.dateFormat = "dd/MM/yy"
var firstDate = dateFormat.date(from: firstDateString)
var finalDate = dateFormat.date(from: finalDateString)

fileprivate func validateDate(initialDate: inout Date, finalDate: inout Date) {
    let unwrapedStartDate = initialDate
    if initialDate > finalDate {
        initialDate = finalDate
        finalDate = unwrapedStartDate
        print("foi")
    }
}

func getDates(_ calendar: Calendar,_ startDate: Date, _ endDate: Date) -> [Date]  {
    guard startDate < endDate else {
        return []
    }
    //pega a diferenca entre a data inicial e a final
    let dayDiff = Int(calendar.dateComponents([.day], from: startDate, to: endDate).day ?? 0)
        
    //cria um range de 0 ao numero de dias totais
    let rangeOfDaysFromStart: Range<Int> = 0..<dayDiff + 1
    
    for i in rangeOfDaysFromStart {
        print(i)
    }
    
    //cria um map com base nas datas
    let dates = rangeOfDaysFromStart.compactMap{
        
        //pega a data incrementar e passar para o map
        calendar.date(byAdding: .day, value: $0, to: startDate)
    }
    return dates
}

func Slw(){
    guard var interDate = firstDate else { return }
    if var endDate = finalDate {
        
        validateDate(initialDate: &interDate, finalDate: &endDate)
        
        let calendar = Calendar.current
        
        let test = calendar.dateComponents([.day], from: interDate, to: endDate).day ?? 0
        
//        let date = DateInterval(start: interDate, end: endDate)
//        print(date)
        
//        for i in date {
//            print(i)
//        }
        
        let date = getDates(Calendar.current, interDate, endDate)
//        for i in date {
//            print(i)
//        }
    
    }
    else {
    }

}

Slw()
