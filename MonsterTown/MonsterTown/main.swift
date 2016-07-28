//
//  main.swift
//  MonsterTown
//
//  Created by Amit Kondhalkar on 7/20/16.
//  Copyright © 2016 AmitK. All rights reserved.
//

import Foundation

var myTown = Town();
myTown.printPopulation();
myTown.changePopulation(100);
myTown.printPopulation();

var gm = Monster();
gm.town = myTown;
gm.terrorizeTown();

var vamp = Vampire();
vamp.town = myTown;
vamp.terrorizeTown();
vamp.terrorizeTown();
vamp.terrorizeTown();
vamp.town?.printPopulation();
vamp.printVampThralls();


