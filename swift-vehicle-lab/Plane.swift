//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Laticia Chance on 7/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool { return speed > 0 && altitude > 0 }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if inFlight == false {
            speed = maxSpeed * 0.10
            altitude = maxAltitude * 0.10
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        
        if inFlight {
            altitude += maxAltitude * 0.10
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            decelerate()
        }
    }
    
    func dive() {
        
        if altitude > 0 {
            altitude -= maxAltitude * 0.10
            if altitude < 0 {
                altitude = 0
            }
            accelerate()
        }
    }
    
    
    func bankRight(){
        
        if inFlight {
            if heading == 360 {
                heading = 0
            }
            
            heading += 45
            speed -= (speed / 10)
        }
    }
    
    func bankLeft(){
        
        if inFlight {
            if heading == 0 {
                heading = 360
            }
            
            heading -= 45
            speed -= (speed / 10)
        }
    }
}

//    func bankLeft() {
//        if inFlight {
//            heading = (heading + 315) % 360
//            speed *= 0.10
//        }
//    }
//
//    func bankRight() {
//        if inFlight {
//            heading = (heading + 45) % 360
//            speed *= 0.10
//        }
//    }
//}
