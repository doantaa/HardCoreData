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
    @ObservedObject var router = NavigationRouter()
    let navigationHandler = NavigationHandler()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navigationPath) {
                HomeView()
                    .navigationDestination(for: Destination.self) { navigationHandler.view(for: $0) }
            }
        }
        .environment(\.managedObjectContext, persistenceController.container.viewContext)
        .environmentObject(router)
    }
}
