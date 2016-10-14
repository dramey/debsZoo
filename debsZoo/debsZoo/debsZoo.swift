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
        zooAnimals["234"] = Animal(id: "234", name: "Flash", type: "Gorilla", location: "Gorilla Falls")
        zooAnimals["345"] = Animal(id: "345", name: "Ted", type: "PolarBear", location: "Ice Capes")
        zooAnimals["456"] = Animal(id: "456", name: "Sally", type: "Manatee", location: "Water World")
    }
    //prepopulated People -- My family :)
    func populatePeople(){
        zooPeople["0123"] = Person(id: "0123", name: "Deb", type: "Visitor")
        zooPeople["0234"] = Person(id: "0234",name: "Rog", type: "Visitor")
        zooPeople["0345"] = Person(id: "0345", name: "Polly", type: "Visitor")
        
    }
    //A function to add an animal to the zoo by adding it to the animal dictionary
    func addAnimal(id: String, name: String, type: String, location: String) {
        zooAnimals[id] = Animal(id: id.uppercased(), name: name.uppercased(), type: type.uppercased(), location: location.uppercased())
       
    }
    //A function to remove an animal from the zoo by removing it from the animal dictionary
    func removeAnimal(id: String) {
        zooAnimals.removeValue(forKey: (id.uppercased()))
        
    }
    //A function to add a person to the zoo by adding it to the people dictionary
    func addPerson(id: String, name: String, type:String) {
        //if type == "Visitor"{
            
        zooPeople[id] = Person(id: id.uppercased(), name: name.uppercased(), type: type.uppercased())
       // }
    }
     //A function to remove a person from the zoo by removing it from the people dictionary
    func removePerson(id:String) {
        zooPeople.removeValue(forKey: (id.uppercased()))
       
    }
    //This function will list all animals that have been added to the listing
    func listAllAnimals() {
       for (id, animal) in zooAnimals{
            print("Animal's Id: \(id.uppercased()), Name: \(animal.name.uppercased()), Type: \(animal.type.uppercased()), Location: \(animal.location.uppercased())")
            print("")
            }

    }
    //This function will list all people that have been added to the listing
    func listAllPeople() {
        for (id, person) in zooPeople{
            print("Person's Id: \(id.uppercased()), Name: \(person.name.uppercased())")
            print("")
        }
    }
    
    func displayPersonInfo(name: String) {
    
    }
        //A function to display information about a specific person in the zoo
    
     //A function to display information about a specific animal in the zoo
    func displayAnimalInfo(name:String) {
            if name == "Nelly".uppercased(){
                print("\nNelly is an eleven year old Elephant.")
                print("\nShe has been with the zoo since she was born.")
                print("\nShe spends her day eating 700 pounds of vegetation day!")
                print("\nTo find her follow the zoo map to Elephant Land.")
                print("")
                } else if name == "Ted".uppercased(){
                    print("\nTed is a  2 year old Polar Bear that loves to swim and play!")
                    print("\nTed can be found in the Ice Capes - Just follow the zoo Map.")
                    print("")
            }else if name == "Flash".uppercased(){
                print("\nFlash is waiting for you, he is a rambunctious Gorilla that is 5 years old")
                print("\nHe is the son of Nika the zoo's oldest Gorilla")
                print("\nTo find Flash follow the zoo map to Gorilla Falls!")
                print("")
            }else if name == "Sally".uppercased(){
                print("\nSally is our sweet and subtle Manatee; she can be found in Water World")
                print("")
                
        }
       
    }
}
  
    
    
    
