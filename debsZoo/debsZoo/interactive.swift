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
            
            switch currentInput {
            case "q":
                done = true
            case "h":
                print("")
                print("Type 'q' - quit")
                print("Type 'aA' - to add an Animal")
                print("Type 'aL' - for Animal Listing")
                print("Type 'rA' - to remove an Animal")
                print("Type 'aP' - to add a Person")
                print("Type 'pL' - for People Listing")
                print("Type 'rP' - to remove a Person")
                print("")
            case "aA":   //this gets all info from the User to Add an Animal & calls the addAnimal Func
                io.writeMessage("Enter the Animal Id")
                currentInput = io.getInput()
                let id: String = currentInput
                io.writeMessage("Enter the Animal Name")
                currentInput = io.getInput()
                let name: String = currentInput
                io.writeMessage("Enter the Animal Type")
                currentInput = io.getInput()
                let type: String = currentInput
                io.writeMessage("Enter the Animal Location")
                currentInput = io.getInput()
                let location: String = currentInput
                debsZoo.addAnimal(id:id, name:name, type:type, location:location)
            case "aL":  //this list all Animals that are currently in the zoo
                debsZoo.listAllAnimals()
            case "aP":  //this gets all info from the User to Add a Person & calls the addPerson Func
                io.writeMessage("Enter the Person's Id")
                currentInput = io.getInput()
                let id: String = currentInput
                io.writeMessage("Enter the Person's Name")
                currentInput = io.getInput()
                let name: String = currentInput
                debsZoo.addPerson(id:id, name:name)
            case "pL":  //this list all the People that are currently checked in to the Zoo
                debsZoo.listAllPeople()
            case "rA":   //this removes the Animal from the zoo dict. by id & calls the removeAnimal func
                io.writeMessage("Please enter Animal Id")
                currentInput = io.getInput()
                let id: String = currentInput
                debsZoo.removeAnimal(id:id)
            case "rP":
                io.writeMessage("Please enter Person Id")
                currentInput = io.getInput()
                let id: String = currentInput
                debsZoo.removePerson(id:id)
                
                
                
            default:
                io.writeMessage("Invalid Command")
            }
        }
    }
}


