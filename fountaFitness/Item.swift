//
//  Item.swift
//  fountaFitness
//
//  Created by Sahil Saoji on 8/7/25.
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
