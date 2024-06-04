//
//  LoginApp.swift
//  Login
//
//  Created by student on 22.05.2024.
//

import SwiftUI

@main
struct LoginApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)

        }
    }
}
