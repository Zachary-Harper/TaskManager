//
//  BaseTasks.swift
//  Task Manager
//
//  Created by Zachary Harper on 9/19/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation

class Manager {
    var tasksArray: [Tasks] = [Tasks(taskName: "Do Homework", details: "You have one math worksheet left"), Tasks(taskName: "Take out Garbage", details: "Take garbage out")]//inital tasks
    
    func quit() {
        let shouldQuit = true
        
        print("Thanks for using our application")
    }
    
    func getInput() -> String {
        var userInput = readLine()
        
        while userInput == nil || userInput == "" {
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
            print("Invalid task name. Please give a valid description of the new task.")
            newTaskName = readLine()
        }
        
        let newTask = Tasks(taskName: newTaskName!, details: newTaskDetails!)
        
        
        //add new task to the tasks list
        tasksArray.append(newTask)
    }

    func listAllTasks() {
        for index in 0..<tasksArray.count{
            print("\(index) : \(tasksArray[index].taskName)")
        }
    }
    func deleteTask() {
        for index in 0..<tasksArray.count{
            print("\(index) : \(tasksArray[index].taskName)")
        }
        print("Please enter the number of task you want to remove")

        var userInput = Int(readLine()!)
        let validTaskIndex = Array(0..<tasksArray.count)

        while userInput == nil || !validTaskIndex.contains(userInput!){
            print("Invalid input. Please enter a useable index")
            userInput = Int(readLine()!)
        }
        tasksArray.remove(at: userInput!)
    }
    
    func listUncompleteTask(){
        for task in tasksArray{
            if !task.complete {
                print(task.taskName)
            }
        }
    }
    
    func listCompleteTask(){
        for task in tasksArray{
            if task.complete {
                print(task.taskName)
            }
        }
    }
    
    
    func markTaskComplete() {
        for index in 0..<tasksArray.count{
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
}

