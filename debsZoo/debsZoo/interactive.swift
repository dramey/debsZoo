//
//  interactive.swift
//  debsZoo
//
//  Created by Deb Ramey on 10/12/16.
//  Copyright © 2016 Deb Ramey. All rights reserved.
//

import Foundation

class Interactive {
    
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()
    private var debsZoo = DebsZoo()
    

    func go() {
        
        while !done {
            io.writeMessage("Enter a command (h for help)")
            currentInput = io.getInput()
            
            switch currentInput.uppercased() {
            case "q".uppercased():
                done = true
            case "h".uppercased():
                print("")
                print("Type 'q' - quit")
                print("Type 'aA' - to add an Animal")
                print("Type 'aL' - for Animal Listing")
                print("Type 'rA' - to remove an Animal")
                print("Type 'aP' - to add a Person")
                print("Type 'pL' - for People Listing")
                print("Type 'rP' - to remove a Person")
                print("Type 'sA' - to get information on animals")
                print("")
            case "aA".uppercased():   //this gets all info from the User to Add an Animal & calls the addAnimal Func
                io.writeMessage("Enter the Animal Id")
                currentInput = io.getInput()
                let id: String = currentInput.uppercased()
                io.writeMessage("Enter the Animal Name")
                currentInput = io.getInput()
                let name: String = currentInput.uppercased()
                io.writeMessage("Enter the Animal Type")
                currentInput = io.getInput()
                let type: String = currentInput.uppercased()
                io.writeMessage("Enter the Animal Location")
                currentInput = io.getInput()
                let location: String = currentInput.uppercased()
                debsZoo.addAnimal(id:id, name:name, type:type, location:location)
            case "aL".uppercased():  //this list all Animals that are currently in the zoo
                debsZoo.listAllAnimals()
            case "aP".uppercased():  //this gets all info from the User to Add a Person
                io.writeMessage("Enter the Person's Id")
                currentInput = io.getInput()
                let id: String = currentInput.uppercased()
                io.writeMessage("Enter the Person's Name")
                currentInput = io.getInput()
                let name: String = currentInput.uppercased()
                io.writeMessage("Enter Visitor or Employee")
                currentInput = io.getInput()
                let type: String = currentInput.uppercased()
                debsZoo.addPerson(id:id, name:name, type:type)
            case "pL".uppercased():  //this list all the People that are currently checked in to the Zoo
                debsZoo.listAllPeople()
            case "rA".uppercased():   //this removes the Animal from the zoo dict. by id
                io.writeMessage("Please enter Animal Id")
                currentInput = io.getInput()
                let id: String = currentInput.uppercased()
                debsZoo.removeAnimal(id:id)
            case "rP".uppercased(): //this removes the Person from the zoo dict. by id
                io.writeMessage("Please enter Person Id")
                currentInput = io.getInput()
                let id: String = currentInput.uppercased()
                debsZoo.removePerson(id:id)
            case "sA".uppercased():  //this gets specific animal information 
                io.writeMessage("Please enter Animal Name")
                currentInput = io.getInput()
                let name: String = currentInput.uppercased()
                debsZoo.displayAnimalInfo(name:name)
                
                
                
            default:
                io.writeMessage("Invalid Command")
            }
        }
    }
}


