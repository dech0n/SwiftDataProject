//
//  UsersViewDynamicFilter.swift
//  SwiftDataProject
//
//  Created by Dechon Ryan on 5/31/24.
//

import SwiftData
import SwiftUI

struct UsersViewDynamicFilter: View {
    @Query var users: [User]
    
    var body: some View {
        List(users) { user in
            Text(user.name)
        }
    }
    
    init(minimumJoinDate: Date, sortOrder: [SortDescriptor<User>]) {
        // creates the query that makes the users array above; the underscore matters b/c we don't want to modify the users array itself, just the query
        _users = Query(filter: #Predicate<User> { user in
            user.joinDate >= minimumJoinDate
        }, sort: sortOrder)
    }
}

#Preview {
    UsersView(minimumJoinDate: .now, sortOrder: [SortDescriptor(\User.name)])
        .modelContainer(for: User.self)
}
