//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

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

enum Transmission {
    case Automatic
    case Manual
}









