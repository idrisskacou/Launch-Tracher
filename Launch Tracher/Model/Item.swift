//
//  Item.swift
//  Launch Tracher
//
//  Created by idriss on 2/16/24.
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
