//
//  Zombie.swift
//  MonsterTown
//
//  Created by Amit Kondhalkar on 7/20/16.
//  Copyright © 2016 AmitK. All rights reserved.
//

import Foundation


class Zombie : Monster {
    var walksWithLimp = true;
    
    final override func terrorizeTown() {
        town?.changePopulation(-10);
        super.terrorizeTown();
        town?.printPopulation();
    }
}