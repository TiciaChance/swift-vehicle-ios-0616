//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Laticia Chance on 7/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed = 0.0
    
    //measured in angular degrees/changes to this prop should always be kept in 0-360 range
    var heading = 0.0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast()  {
        self.speed = self.maxSpeed
    }
    
    func halt()  {
        self.speed = 0.0
    }
    
    func accelerate()  {
        
        self.speed +=  maxSpeed * 0.10
        if self.speed > maxSpeed{
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        self.speed -=  maxSpeed * 0.10
        
        if self.speed < 0 {
            self.speed = 0
        }
        
    }
    
    func turnRight() {
        
        if self.speed > 0 {
            self.heading = (self.heading + 90) % 360
            self.speed /= 2
            
            //            if self.heading == 360 {
            //                self.heading = 0
            //            }
            //
            //            if self.heading > 0 && self.heading < 360 {
            //                self.heading += 90.0
            //            }
            //
            //            self.speed = self.speed / 2.0
            //        }
            
            
        } 
    }
    
    func turnLeft() {
        if self.speed > 0 {
            self.heading = (self.heading + 270) % 360
            self.speed/=2
        }
    }
    
}
