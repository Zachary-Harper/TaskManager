//
//  Menu.swift
//  Task Manager
//
//  Created by Zachary Harper on 9/17/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation

class Menu {
    var shouldQuit = false
    
    let tasksListOne = Manager()
    func go(){
        while !shouldQuit {//while the program should run do this
            printMenu()//prints the main menu
            print(getInput())
            let input = getInput()
            
            while !validateInput(input: input){
                printMenu()
                var _ = getInput()
            }
            handleInput(input)
        }
        }
        
    
    
    
    
    func printMenu() {
        print("""
        
         Task Manager
         1. Create A New Task
         2. List All Tasks
         3. List All Uncompleted Tasks
         4. List All Completed Tasks
         5. Mark A Incomplete Task Complete
         6. Mark A Complete Task Incomplete
         7. Delete A Task
         8. Quit Program
        
        Please enter a number from 1 to 8

""")
    }
    
    
    
    func getInput() -> String {
        var userInput = readLine()
        
        while userInput == nil || userInput == "" {
            print("Please give a valid input")
            userInput = readLine()
        }
        return userInput!
    }

    func quit() {
        shouldQuit = true
        print("Thank you for visiting")
    }
    
    func validateInput(input: String) -> Bool  {
        let validMenuOptions = Array(1...9)
        guard let number = Int(input) else {//if the number thats assigned is
            return false
        }
        return validMenuOptions.contains(number)
        
        
        
    }
    
    func handleInput(_ input : String) {
        switch getInput() {
        case "1"://calls the create a new task function
            tasksListOne.addTask()
        case "2":// calls the list all function
            tasksListOne.listAllTasks()
        case "3"://calls the list uncompleted tasks function
            tasksListOne.listUncompleteTask()
        case "4"://call the list completed tasks func
            tasksListOne.listCompleteTask()
        case "5":// calls the mark a task complete function
            tasksListOne.markTaskComplete()
        case "6":// calls the mark a task incomplete function
            tasksListOne.markTaskIncomplete()
        case "7"://calls the delete a task function
            tasksListOne.deleteTask()
        case "8"://calls the quit function
            tasksListOne.quit()
        default:
            break
        }
    }
    
    
}
