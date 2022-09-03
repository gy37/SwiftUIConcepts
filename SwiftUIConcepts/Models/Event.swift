//
//  Event.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/9/3.
//

import Foundation

struct Event {
    let title: String
    let date: Date
    let location: String
    let symbol: String
    
    static let `default` = Event(title: "Buy Daisies", date: .now, location: "Flower Shop", symbol: "gift")
}
