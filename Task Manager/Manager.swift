//
//  BaseTasks.swift
//  Task Manager
//
//  Created by Zachary Harper on 9/19/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation

class Manager {//the manager class
    var tasksArray: [Tasks] = [Tasks(taskName: "Do Homework", details: "You have one math worksheet left"), Tasks(taskName: "Take out Garbage", details: "Take garbage out")]//inital tasks
    
    func quit() {//quit function
        _ = true
        
        print("Thanks for using our application")
    }
    
    func getInput() -> String {//fucntion that gets input from the user in the form of strings
        var userInput = readLine()
        
        while userInput == nil || userInput == "" {//makes sure that the input is a string thats not empty or nil
            print("Please give a valid input")
            userInput = readLine()
        }
        return userInput!
    }
    
    func addTask() {
        print("Please enter the name of the task you would like to add")
        //get input from user and store in a variable
        
        var newTaskName = readLine()
          // make sure thast the input isnt nil or a string
        
        
        while newTaskName == nil || newTaskName == "" {
            print("Invalid task name. Please give a valid task name.")
            newTaskName = readLine()
        }
        print("Please enter the new tasks description")
        var newTaskDetails = readLine()
        while newTaskDetails == nil || newTaskDetails == "" {
            print("Invalid task description. Please give a valid description of the new task.")
            newTaskName = readLine()
        }
        
        let newTask = Tasks(taskName: newTaskName!, details: newTaskDetails!)
        // makes the new task using the format the was initally made
        
        //add new task to the tasks list
        tasksArray.append(newTask)
    }

    func listAllTasks() {
        for index in 0..<tasksArray.count{//lists all tasks from 0(start of arrasy) to whatever the end value is
            print("\(index) : \(tasksArray[index].taskName) - \(tasksArray[index].details)")//prints what it is in the array and the task name
        }
    }
    func deleteTask() {
        for index in 0..<tasksArray.count{//prints all items in the array and the task name for said item
            print("\(index) : \(tasksArray[index].taskName)")
        }
        print("Please enter the number of task you want to remove")

        var userInput = Int(readLine()!)
        let validTaskIndex = Array(0..<tasksArray.count)

        while userInput == nil || !validTaskIndex.contains(userInput!){//input validation
            print("Invalid input. Please enter a useable index")
            userInput = Int(readLine()!)
        }
        tasksArray.remove(at: userInput!)//removes the task at the indicated value
    }
    
    func listUncompleteTask(){//lists all incomplete tasks
        for task in tasksArray{
            if !task.complete {//if the task isn't complete it prints it out
                print(task.taskName)
            }
        }
    }
    
    func listCompleteTask(){//lists all complete tasks
        for task in tasksArray{
            if task.complete {//if the task has a complete value of true then it will print it out
                print(task.taskName)
            }
        }
    }
    
    
    func markTaskComplete() {
        for index in 0..<tasksArray.count{//for each value thats not complete it will print it out
            if tasksArray[index].complete == false{
                print("\(index) : \(tasksArray[index].taskName)")
            }
        }
        print("Please enter the number of the task you have completed : ")

        var userInput = Int(readLine()!)

        while userInput == nil {
            print("Invalid input. Please enter a useable index")
            userInput = Int(readLine()!)
        }
        tasksArray[userInput!].complete = true

        tasksArray[userInput!].completeByDate = nil

    }

    func markTaskIncomplete() {
        for index in 0..<tasksArray.count{
            if tasksArray[index].complete == true{
                print("\(index) : \(tasksArray[index].taskName)")
            }
        }
        print("Please enter the number of the task you want to mark Incomplete : ")
        
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input. Please enter a useable index")
            userInput = Int(readLine()!)
        }
        tasksArray[userInput!].complete = false
        
        
        
    }
    
    func editTask() {//the edit function
        
        for index in 0..<tasksArray.count{//prints the index and name of each task
            
                print("\(index) : \(tasksArray[index].taskName)")
            
        }
        
        print("Please select the number of the task you wish to edit.")
        
        var userInput = Int(readLine()!)//asks what task you would like to edit
        
        while userInput == nil {//makes sure that the input is valid
            print("Invalid input. Please enter a useable index")
            userInput = Int(readLine()!)
        }
        
        print("Please enter a new task name")//asks for new task name
        tasksArray[userInput!].taskName = readLine()!//assigns the  new task name to the previously selected task
        
        print("Please enter a new task description")
        tasksArray[userInput!].details = readLine()!//assigns the new description to the previously selected task
        
        
        
        
    }
}

