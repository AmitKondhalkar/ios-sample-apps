//
//  Vampire.swift
//  MonsterTown
//
//  Created by Amit Kondhalkar on 7/21/16.
//  Copyright © 2016 AmitK. All rights reserved.
//

import Foundation

class Vampire : Monster {
    var vampThralls : [Vampire] = [];
    
    override func terrorizeTown() {
        town?.changePopulation(-1);
        vampThralls.append(Vampire());
        super.name = "Vampire";
        super.terrorizeTown();
    }
    
    func printVampThralls(){
        print("Vampire Thralls \(vampThralls.count)");
    }
}
