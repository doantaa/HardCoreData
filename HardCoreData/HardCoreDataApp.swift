//
//  HardCoreDataApp.swift
//  HardCoreData
//
//  Created by Doanta  on 08/02/25.
//

import SwiftUI

@main
struct HardCoreDataApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
