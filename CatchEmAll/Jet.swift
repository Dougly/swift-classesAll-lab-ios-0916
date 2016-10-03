//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    override func climb() {
        if inFlight && altitude < maxAltitude && speed > 0 {
            altitude += maxAltitude * 0.2
            decelerate()
        }
        if altitude > maxAltitude {
            altitude = maxAltitude
        }
    }
    
    override func dive () {
        if inFlight && altitude > 0 && speed < maxSpeed {
            altitude -= maxAltitude * 0.2
            accelerate()
        }
        if altitude < 0 {
            altitude = 0
        }
    }
    
    func afterburner () {
        if speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}









