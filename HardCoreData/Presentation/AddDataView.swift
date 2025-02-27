//
//  AddDataView.swift
//  HardCoreData
//
//  Created by Doanta  on 10/02/25.
//

import SwiftUI
import CoreData

struct AddDataView: View {
    @State var title: String = ""
    @State var description: String = ""
    @EnvironmentObject var router: NavigationRouter
    @Environment(\.managedObjectContext) var managedObjectContext

    var body: some View {
        Form {
            Text("Input Data")
                .font(.headline)
            TextField("Title", text: $title)
                .labelsVisibility(.visible)

            TextField("Description", text: $description)

            Button("Add") {
                print("Added : \(title) \(description)")
                router.navigate(to: .home)            }
//            .disabled(title.isEmpty || description.isEmpty)

        }
    }

    private func saveData(){

    }
}

#Preview {
    AddDataView()
}
