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
    @FetchRequest(sortDescriptors: []) var cars: FetchedResults<Car>

    var body: some View {

        NavigationView {
            ScrollView {
                VStack {
                    List(cars) { car in
                        ListItem(
                            title: car.make ?? "Unknown",
                            desription: car.model ?? "Unknown",
                            date: car.year ?? "Unknown"
                        )
                    }
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

    func handlerAddData(){
        let title = "Ayam"
        let description = "Description"
        let year = "2021"

        let car = Car(context: viewContext)
        car.make = title
        car.model = description
        car.year = year

        try? viewContext.save()
    }
}

#Preview {
    HomeView()
}
