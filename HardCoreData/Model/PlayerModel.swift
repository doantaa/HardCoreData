//
//  PlayerModel.swift
//  HardCoreData
//
//  Created by Doanta  on 13/02/25.
//

import Foundation

struct PlayerModel: Identifiable, Hashable {
    let id: Int
    let color: String
    let isDiesel: Bool
    let make: String
    let model: String
    let thumbnail: NSObject
    let year: String
    let options: OptionsModel
}


struct OptionsModel: Identifiable, Hashable {
    let id: Int
    
}



//    @NSManaged public var alarm: Bool
//@NSManaged public var bluetooth: Bool
//@NSManaged public var offRoadPackage: Bool
//@NSManaged public var powerSteering: Bool
//@NSManaged public var powerWindows: Bool
//@NSManaged public var car: Car?

