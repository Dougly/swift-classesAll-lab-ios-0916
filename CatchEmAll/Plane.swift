//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Plane : Vehicle {
    var maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool { return altitude > 0 && speed > 0 }
    
    init (name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff () {
        if speed == 0 && altitude == 0 {
            speed += maxSpeed * 0.1
            altitude += maxAltitude * 0.1
        }
    }
    
    func land () {
        speed = 0
        altitude = 0
    }
    
    func climb () {
        if inFlight && altitude < maxAltitude && speed > 0 {
            altitude += maxAltitude * 0.1
            decelerate()
        }
        if altitude > maxAltitude {
            altitude = maxAltitude
        }
    }
    
    func dive () {
        if inFlight && altitude > 0 && speed < maxSpeed {
            altitude -= maxAltitude * 0.1
            accelerate()
        }
        if altitude < 0 {
            altitude = 0
        }
    }
    
    func bankRight () {
        if self.speed > 0 && inFlight {
            self.heading += 45
            self.speed -= speed * 0.1
        }
        if self.heading > 360 {
            self.heading -= 360
        }
    }
    
    func bankLeft () {
        if self.speed > 0 && inFlight {
            self.heading -= 45
            self.speed -= speed * 0.1
        }
        if self.heading < 0 {
            self.heading = 360 + self.heading
        }
    }
}








