//
//  User.swift
//  SwiftDataProject
//
//  Created by Dechon Ryan on 5/31/24.
//

import Foundation
import SwiftData

@Model
class User {
    var name: String
    var city: String
    var joinDate: Date
    // @Relatioship defines delete rule (cascade del) that ensures all Jobs for a User are deleted when the User is deleted
    @Relationship(deleteRule: .cascade) var jobs = [Job]() // creates relationship with Job (one-to-many)
    
    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}
