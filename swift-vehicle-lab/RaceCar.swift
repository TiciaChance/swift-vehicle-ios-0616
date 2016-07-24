//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Laticia Chance on 7/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsor: [String]) {
        
        self.driver = driver
        self.sponsors = sponsor
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cynlinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        speed +=  maxSpeed / 5
        if speed > maxSpeed{
            speed = maxSpeed
        }
    }
    
    override func decelerate() {
        speed -=  maxSpeed / 5
        
        if speed < 0 {
            speed = 0
        }
    }
    
    //if car is in motion increase the heading by 90 ang but decrease speed by 1/4 of its value
    func driftRight() {
        if speed > 0 {
            if heading == 360 {
                heading = 0
            }
            heading += 90
            speed -= speed * 0.25
        }
    }
    
    func driftLeft()  {
        if speed > 0 {
            if heading == 0 {
                
                heading = 360
            }
            heading -= 90
            speed -= speed * 0.25
        }
    }
}