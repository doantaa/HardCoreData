//
//  NavigationRouter.swift
//  HardCoreData
//
//  Created by Doanta  on 10/02/25.
//

import SwiftUI

final class NavigationRouter: ObservableObject {
    @Published var navigationPath = NavigationPath()
    func navigate(to destination: Destination) {
        navigationPath.append(destination)
    }

    func navigateBack() {
        navigationPath.removeLast()
    }

    func navigateToRoot() {
        navigationPath.removeLast(navigationPath.count)
    }

}

final class NavigationHandler {
    @ViewBuilder
    func view(for destination: Destination) -> some View {
        switch destination {
            case .home:
                HomeView()
            case .addData:
                AddDataView()
        }
    }

}

enum Destination : Hashable {
    case home
    case addData
}

