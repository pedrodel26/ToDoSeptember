//
//  ToDoSeptemberApp.swift
//  ToDoSeptember
//
//  Created by Pedro Delmondes  on 23/09/2024.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoSeptemberApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ToDoListView()
        }
    }
}
