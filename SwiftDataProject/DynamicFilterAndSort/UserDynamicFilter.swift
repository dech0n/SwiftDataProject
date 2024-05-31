//
//  UserDynamicFilter.swift
//  SwiftDataProject
//
//  Created by Dechon Ryan on 5/31/24.
//

import Foundation
import SwiftData

@Model
class UserDynamicFilter {
    var name: String
    var city: String
    var joinDate: Date
    
    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}
