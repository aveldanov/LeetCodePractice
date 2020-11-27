class Car{
    
    var color = "Red"
    
    static let instance = Car()
}


var myCar = Car.instance

myCar.color = "blue"


var yourCar = Car.instance
print(yourCar.color)

yourCar.color = "yellow"


print(yourCar.color)
print(myCar.color)
