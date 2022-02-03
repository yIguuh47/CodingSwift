
struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name : String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    mutating func harvestRice() {
        resources["Rice"] = 100
    }
    
}

var annotherTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconuts" : 100])
annotherTown.citizens.append("Wilson")


func exercise() {

    // Define the User struct here
    struct User {
        var name: String
        var email: String?
        var followers: Int
        var isActive: Bool
        
        init(name : String , email : String?, followers : Int , isActive: Bool){
            self.name = name
            self.email = email
            self.followers = followers
            self.isActive = isActive
        }
        
        func logStatus(){
            if (self.isActive == true) {
                print("\(name) is working hard")
            } else {
                print("\(name) has left earth")
            }
        }
    }

    // Initialise a User struct here
    var userOne = User(name: "Richard",email: nil, followers : 0, isActive: false)
    userOne.logStatus()



    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email!) ...")
    print("\(musk.name) has \(musk.followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
    
}
