//
//  animal.swift
//  debsZoo
//
//  Created by Deb Ramey on 10/12/16.
//  Copyright © 2016 Deb Ramey. All rights reserved.
//

import Foundation
class Animal {
    //Have variables here to contain information about the animal (special features, noises, etc.)
    var id: String
    var name: String
    var type: String
    var location: String
    
    //Functions to store or change information about an animal
    
    //Make an initializer for the Animal class
    init(id: String, name: String, type: String, location: String) {
        self.id = id
        self.name = name
        self.type = type
        self.location = location
    }
}

class Reptile: Animal {
    var eatingMethod: String
    
    override init(id: String, name: String, type: String, location: String) {
        eatingMethod = "Hand"
        super.init(id: id, name: name, type: type, location: location)
    }
}

class Aquatic: Animal {
    var eatingMethod: String

    override init(id: String, name: String, type: String, location: String) {
        eatingMethod = "Tossing stuff in water"
        super.init(id: id, name: name, type: type, location: location)
    }
}
    
class Mammal: Animal {
    var eatingMethod: String
    
    override init(id: String, name: String, type: String, location: String) {
        eatingMethod = "Throwing meat in cage"
        super.init(id: id, name: name, type: type, location: location)
    }
  
    
}


