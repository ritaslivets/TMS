//MARK: 1 classes
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
