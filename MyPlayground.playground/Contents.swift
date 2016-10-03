//: Playground - noun: a place where people can play

import UIKit

print ("hi")

class Vehicle {
    var name : String
    var weight: Double
    var maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
    
    init (name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast () {
        self.speed = maxSpeed
    }
    
    func halt () {
        self.speed = 0
    }
    
    func accelerate () {
        if self.speed < self.maxSpeed {
            self.speed += self.maxSpeed * 0.1
        }
        if self.speed > self.maxSpeed {
            self.speed = maxSpeed
        }
    }
    
    func decelerate () {
        if self.speed > 0 {
            self.speed -= self.maxSpeed * 0.1
        }
        if self.speed < 0 {
            self.speed = 0
        }
    }
    
    func turnRight () {
        if self.speed > 0 {
            self.heading += 90
            self.speed /= 2
        }
        if self.heading > 360 {
            self.heading -= 360
        }
    }
    
    func turnLeft () {
        if self.speed > 0 {
            self.heading -= 90
            self.speed /= 2
        }
        if self.heading < 0 {
            self.heading += 360
        }
    }
    
}

class Car : Vehicle {
    var transmission: String
    var cylinders: Int
    var milesPerGallon: Double
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double) {
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func drive () {
        accelerate()
    }
    
    func brake () {
        decelerate()
    }
    
}




let myCar = Car(name: "Car", weight: 23, maxSpeed: 10000, transmission: "Manual", cylinders: 8, milesPerGallon: 99)

myCar.speed = myCar.maxSpeed * 0.95

myCar.accelerate()
myCar.accelerate()
myCar.accelerate()

myCar.accelerate()

print(myCar.speed)






