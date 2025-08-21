//
//  Challenge.swift
//  fountaFitness
//
//  Created by Sahil Saoji on 8/20/25.
//

import Foundation
import SwiftData

@Model
class Challenge {
    var name: String
    var category: String
    var duration: Int
    var createdAt: Date

    init(name: String, category: String, duration: Int, createdAt: Date = .now) {
        self.name = name
        self.category = category
        self.duration = duration
        self.createdAt = createdAt
    }
}
