//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Dechon Ryan on 5/31/24.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
