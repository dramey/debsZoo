//
//  debsZoo.swift
//  debsZoo
//
//  Created by Deb Ramey on 10/12/16.
//  Copyright © 2016 Deb Ramey. All rights reserved.
//

import Foundation
class DebsZoo{
    var zooAnimals: [String:Animal] = [:]
    var zooPeople: [String:Person] = [:]
    
    
    init() {
        populateAnimals()
        populatePeople()
    }
    //prepopulated Animals -- My Favorite Animals :)
    func populateAnimals() {
        zooAnimals["123"] = Animal(id: "123", name: "Nelly", type: "Elephant", location: "Elephant Land")
        zooAnimals["234"] = Animal(id: "234", name: "Flash", type: "Gorilla", location: "Gorilla Land")
        zooAnimals["345"] = Animal(id: "345", name: "Ted", type: "PolarBear", location: "Ice Land")
        zooAnimals["456"] = Animal(id: "456", name: "Sally", type: "Manatee", location: "Water World")
    }
    //prepopulated People -- My family :)
    func populatePeople(){
        zooPeople["0123"] = Person(id: "0123", name: "Deb")
        zooPeople["0234"] = Person(id: "0234",name: "Rog")
        zooPeople["0345"] = Person(id: "0345", name: "Polly")
        
    }
    //A function to add an animal to the zoo by adding it to the animal dictionary
    func addAnimal(id: String, name: String, type: String, location: String) {
        zooAnimals[id] = Animal(id: id, name: name, type: type, location: location)
       
    }
    //A function to remove an animal from the zoo by removing it from the animal dictionary
    func removeAnimal(id: String) {
        zooAnimals.removeValue(forKey: (id))
        
    }
    //A function to add a person to the zoo by adding it to the people dictionary
    func addPerson(id: String, name: String) {
        zooPeople[id] = Person(id: id, name: name)
        
    }
     //A function to remove a person from the zoo by removing it from the people dictionary
    func removePerson(id:String) {
        zooPeople.removeValue(forKey: (id))
       
    }
    //This function will list all animals that have been added to the listing
    func listAllAnimals() {
       for (id, animal) in zooAnimals{
            print("Animal's Id: \(id), Name: \(animal.name), Type: \(animal.type), Location: \(animal.location)")
            print("")
            }

    }
    //This function will list all people that have been added to the listing
    func listAllPeople() {
        for (id, person) in zooPeople{
            print("Person's Id: \(id), Name: \(person.name)")
            print("")
        }
    }
    
    
    func displayPersonInfo() {
        //A function to display information about a specific person in the zoo
    }
    
    func displayAnimalInfo() {
        //A function to display information about a specific animal in the zoo
    }
}
