//
//  Tasks.swift
//  Task Manager
//
//  Created by Zachary Harper on 9/17/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation


class Tasks {
    var taskName : String
    var details : String
    var complete: Bool = false
    var completeByDate : Date?
    
    init(taskName: String, details: String) {
        self.taskName = taskName
        self.details = details
    }
    
    
    
}
