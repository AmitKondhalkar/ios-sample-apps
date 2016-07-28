//
//  Monster.swift
//  MonsterTown
//
//  Created by Amit Kondhalkar on 7/20/16.
//  Copyright © 2016 AmitK. All rights reserved.
//

import Foundation

class Monster{
    var town : Town?;
    var name = "Monster";
    
    func terrorizeTown(){
        if(town != nil){
            print("\(name) is terrorizing town.");
        } else {
            print("\(name) did not found town yet");
        }
    }
    
}