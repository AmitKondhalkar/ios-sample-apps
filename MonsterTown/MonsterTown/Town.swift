//
//  Town.swift
//  MonsterTown
//
//  Created by Amit Kondhalkar on 7/20/16.
//  Copyright © 2016 AmitK. All rights reserved.
//

import Foundation

struct Town {
    var population = 1000;
    var stopLights = 5;
    
    func printPopulation(){
        print("Town has \(population) population, and \(stopLights) stop lights.");
    }
    
    mutating func changePopulation(amount:Int){
        if(abs(amount) > population && amount < 0) {
            population = 0;
        } else {
            population = population+amount;
        }
    }
}
