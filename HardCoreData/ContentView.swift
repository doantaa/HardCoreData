//
//  ContentView.swift
//  HardCoreData
//
//  Created by Doanta  on 08/02/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
