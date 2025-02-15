import Cocoa

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectic: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectic)
    }
}

class Bus: Vehicle {
    let isConvertible = false
}

let teslaX = Car(isElectic: true, isConvertible: false)
let schoolBus = Bus(isElectric: false)
