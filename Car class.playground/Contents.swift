//: Playground - noun: a place where people can play

import UIKit

class door {
    var totalNumbers = 4

    func openDoor() {
        print("open the door")
}
    func numberOfDoors() -> Int {
        return totalNumbers
    }
}

 class Car {
    var doors: [Door]

    init() {
        doors = []
    }
}


