import UIKit

func handlerUrl(url: String) {

    guard let urlComponets = URLComponents(string: url) else { return }
    guard let queryItems = urlComponets.queryItems else { return }
    var screenName: String?
    var parameters: [String : String] = [:]
    
    print(queryItems)
    
    for i in queryItems {
        
        if i.name == "tela" {
            screenName = i.value
            continue
        }
        parameters[i.name] = i.value
    }
    
    guard let screen = screenName else { return }
    
    print("Screen:\(screen) /n Parameters:\(parameters)")
    
}

let url = "santanderpf://deeplink?tela=CHATBOT&intention=Derivar%20para%20especialista%20de%20Consorcio"

handlerUrl(url: url)


let arr: [String : String] = [ "tela" : "tal", "bla" : "blabla" ]

var test: [String : String ] = [:]

for i in arr {
    test[i.key] = i.value
}

//test[arr.first?.key ?? ""] = arr.first?.value

//guard let tes = arr.first(where: {_ in
//    test[arr.key] = arr.value
//}) else {return}


print(arr.first)
print(test)
