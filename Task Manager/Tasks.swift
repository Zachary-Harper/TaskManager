//
//  Tasks.swift
//  Task Manager
//
//  Created by Zachary Harper on 9/17/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation


class Tasks {//base tasks class
    var taskName : String
    var details : String
    var complete: Bool = false
    var completeByDate : Date?
    
    init(taskName: String, details: String) {//initalizes the taskname and details
        self.taskName = taskName
        self.details = details
    }
    
    
    
}
