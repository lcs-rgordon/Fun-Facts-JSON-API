//
//  Fact.swift
//  Fun Facts JSON API
//
//  Created by Devon Kenneth Hansen on 2021-10-14.
//

import Foundation
import SwiftUI

struct Fact: Decodable {
    let id: String
    let fact: String
    let cat: String
    let hits: String
}

struct Response: Decodable {
    let status: Bool
    let data: Fact
}

extension Fact {
    
    static let dummyData = Fact(id: "1", fact: "The approximate value of pi is 3.14.", cat: "Math", hits: "177")
    
}
