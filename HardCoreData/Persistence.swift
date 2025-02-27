//
//  Persistence.swift
//  HardCoreData
//
//  Created by Doanta  on 08/02/25.
//

import CoreData

// Singleton Version
//struct PersistenceController {
//    static let shared = PersistenceController()
//    let container: NSPersistentContainer
//
//    init(inMemory: Bool = false) {
//        //Ini bakal digunain buat jadi nama container si data itu, biasanya ikutin nama aplikasinya
//        container = NSPersistentContainer(name: "HardCoreData")
//
//        if inMemory {
//            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
//        }
//
//        container.loadPersistentStores(completionHandler: { (description, error) in
//            if let error = error as NSError? {
//                fatalError("Unresolved error \(error), \(error.userInfo)")
//            }
//
//
//        })
//
//        container.viewContext.automaticallyMergesChangesFromParent = true
//    }
//}


class PersistenceController: ObservableObject {
    //define the container
    let container: NSPersistentContainer = NSPersistentContainer(name: "HardCoreData")


    //load the current data in container, to make sure it works, before the data is used
    init() {
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
                print(error)
            }
        }
    }
}
