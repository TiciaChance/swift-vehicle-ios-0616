//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Laticia Chance on 7/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    
    override func climb() {
        if inFlight {
            altitude += maxAltitude * 0.20
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            self.decelerate()
        }
    }
    
    override func dive() {
        if altitude > 0 {
            altitude -= maxAltitude * 0.20
            if altitude < 0 {
                altitude = 0
            }
            self.accelerate()
        }
    }
    
    func afterburner() {
        if speed == maxSpeed && inFlight {
            speed = maxSpeed * 2
        }
    }
}
    
