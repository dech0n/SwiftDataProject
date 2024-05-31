//
//  Job.swift
//  SwiftDataProject
//
//  Created by Dechon Ryan on 5/31/24.
//

import Foundation
import SwiftData

@Model
class Job {
    var name: String
    var priority: Int
    var owner: User? // creates a relationship with User
    
    init(name: String, priority: Int, owner: User? = nil) {
        self.name = name
        self.priority = priority
        self.owner = owner
    }
}
