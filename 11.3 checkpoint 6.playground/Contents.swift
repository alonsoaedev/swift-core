import Cocoa

/*
 Create a struct to store information about a car, including its model, number of seats, and current gear,
 then add a method to change gears up or down.
 Have a think about variables and access control: what data should be a variable rather than a constant,
 and what data should be exposed publicly? Should the gear-changing method validate its input somehow?
*/

struct Car {
    private let model: String
    private let numberOfSeats: Int
    private(set) var currentGear = 1
    
    init(model: String, numberOfSeats: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
    }
    
    mutating func gearUp() {
        if currentGear == 10 {
            print("Ops, max gear to use is 10")
            return
        }
        currentGear += 1
    }
    
    mutating func gearDown() {
        if currentGear == 1 {
            print("Ops, min gear to use is 1")
            return
        }
        currentGear -= 1
    }
}

var car1 = Car(model: "X", numberOfSeats: 4)
print(car1.currentGear)
car1.gearDown()
print(car1.currentGear)
car1.gearUp()
car1.gearUp()
car1.gearUp()
car1.gearUp()
car1.gearUp()
car1.gearUp()
car1.gearUp()
car1.gearUp()
car1.gearUp()
car1.gearUp()
print(car1.currentGear)
car1.gearUp()
print(car1.currentGear)
