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
                print("Type 'h' - help")
                print("Type 'q' - quit")
                print("Type 'addAnimal' - to add an Animal")
                print("Type 'al' - for Animal Listing")
                print("Type 'addPeople' - to add a Person")
                print("Type 'pl' - for People Listing")
                print("")
            case "addAnimal":
                
                // get name of animal
                // get id of animal
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
            case "al":
                debsZoo.listAllAnimals()
            case "addPerson":
                io.writeMessage("Enter the Person's Id")
                currentInput = io.getInput()
                let id: String = currentInput
                io.writeMessage("Enter the Person's Name")
                currentInput = io.getInput()
                let name: String = currentInput
                debsZoo.addPerson(id:id, name:name)
            case "pl":
                debsZoo.listAllPeople()
                
               

            default:
                io.writeMessage("Invalid Command")
            }
        }
    }
}
