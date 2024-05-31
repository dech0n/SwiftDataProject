//
//  ContentViewPredicateSort.swift
//  SwiftDataProject
//
//  Created by Dechon Ryan on 5/31/24.
//

import SwiftData
import SwiftUI

struct ContentViewPredicateSort: View {
    @Environment(\.modelContext) var modelContext
    @Query(filter: #Predicate<User> { user in
        // could also use a single if/else statement (nested is ok)
        user.name.localizedStandardContains("R") && // ignores case
        user.city == "London"
    }, sort: \User.name) var users: [User]
    
    var body: some View {
        NavigationStack {
            List(users) { user in
                    Text(user.name)
            }
            .navigationTitle("Users")
            .navigationDestination(for: User.self) { user in
                EditUserView(user: user)
            }
            .toolbar {
                Button("Add Sample", systemImage: "plus") {
                    try? modelContext.delete(model: User.self)
                    
                    let first = User(name: "Ed Sheeran", city: "Londan", joinDate: .now.addingTimeInterval(86400 * -10))
                    let second = User(name: "Rosa Diaz", city: "New York", joinDate: .now.addingTimeInterval(86400 * -5))
                    let third = User(name: "Roy Kent", city: "London", joinDate: .now.addingTimeInterval(86400 * 5))
                    let fourth = User(name: "Johnny English", city: "London", joinDate: .now.addingTimeInterval(86400 * 10))
                    
                    modelContext.insert(first)
                    modelContext.insert(second)
                    modelContext.insert(third)
                    modelContext.insert(fourth)
                }
            }
        }
    }
}

#Preview {
    ContentViewPredicateSort()
}
