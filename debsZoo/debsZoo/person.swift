//
//  person.swift
//  debsZoo
//
//  Created by Deb Ramey on 10/12/16.
//  Copyright © 2016 Deb Ramey. All rights reserved.
//

import Foundation
class Person {
    var id: String
    var name: String
    
    //Make an initializer for a person object
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}


class Visitor: Person {
    
    
}

class Employee: Person {
    //var isEmployee = true
    
    
}
