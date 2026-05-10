//MARK: - 1 classes
class Shape{
    let color: String
    let name: String
    init(color:String, name: String){
        self.color = color
        self.name = name
    }
    func calculateArea() -> Double {
        return 0
    }
}
class Circle: Shape {
    let pi = 3.14
    let radius: Double
    init(radius: Double, color: String) {
        self.radius = radius
        super.init(color: color, name: "Круг")
    }
    override func calculateArea() -> Double {
        return pi * radius * radius
    }
}
class Rectangle: Shape {
    let height: Double
    let width: Double
    init(height: Double,width: Double, color: String){
        self.height = height
        self.width = width
        super.init(color: color, name: "Прямоугольник")
    }
    override func calculateArea() -> Double {
        return (height * width)
    }
}
class Triangle: Shape {
    let height: Double
    let side: Double
    init(height: Double, side: Double, color: String){
        self.height = height
        self.side = side
        super.init(color: color, name: "Треугольник")
    }
    override func calculateArea() -> Double {
        return 0.5 * height * side
    }
}

let newArray: [Shape] = [ Circle(radius: 4, color: "red"), Rectangle(height: 3, width: 4.5, color: "green"), Triangle(height: 3.3, side: 5, color: "blue")]
for shape in newArray {
    print("\(shape.name) площадь: \(shape.calculateArea())")
}


//MARK: - 2 struct
struct Contact {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String?
}
func searchContacts(contacts: [Contact], searchString: String) -> [Contact] {
    let search = searchString.lowercased()
    return contacts.filter{ $0.firstName.lowercased().contains(search) || $0.lastName.lowercased().contains(search)}
}

let contacts = [Contact(firstName: "Misha", lastName: "Smirnov", phoneNumber: "+375291132412", email: nil ), Contact(firstName: "Oleg", lastName: "Volkolovsky", phoneNumber: "+375291121212", email: "@volk.gmail"), Contact( firstName: "Mariam", lastName: "Nojh", phoneNumber: "+6357253735", email: nil)]

let result1 = searchContacts(contacts: contacts, searchString: "misha")
for contact in result1 {
    print("\(contact.firstName) \(contact.lastName) - \(contact.phoneNumber)")
}
