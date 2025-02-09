//
//  Persistence.swift
//  HardCoreData
//
//  Created by Doanta  on 08/02/25.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        //Ini bakal digunain buat jadi nama container si data itu, biasanya ikutin nama aplikasinya
        container = NSPersistentContainer(name: "HardCoreData")

        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }

        container.loadPersistentStores(completionHandler: { (description, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }


        })

        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
