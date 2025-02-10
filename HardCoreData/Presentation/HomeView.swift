//
//  ContentView.swift
//  HardCoreData
//
//  Created by Doanta  on 08/02/25.
//

import SwiftUI
import CoreData

struct HomeView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var isExpanded = false
    @EnvironmentObject var router: NavigationRouter

    var body: some View {

        NavigationView {
            ScrollView {
                VStack {
                    ListItem()
                    ListItem()
                    ListItem()
                }
            }
            .navigationTitle(Text("Home"))
            .toolbar {
                Button {
                    router.navigate(to: .addData)
                    print("Navigated to .addData")
                } label: {
                    Image(systemName: "plus")
                }

            }

        }


    }
}

#Preview {
    HomeView()
}
