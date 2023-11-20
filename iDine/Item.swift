//
//  Item.swift
//  iDine
//
//  Created by Liam Cashel on 11/20/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
