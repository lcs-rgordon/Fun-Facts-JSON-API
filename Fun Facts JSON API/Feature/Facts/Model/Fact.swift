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

extension Fact {
    
    static let dummyData: [Fact] = [
        Fact(id: "id 1", fact: "Random Fact 1", cat: "cat 1", hits: "hits 1"),
        Fact(id: "id 2", fact: "Random Fact 2", cat: "cat 2", hits: "hits 2"),
        Fact(id: "id 3", fact: "Random Fact 3", cat: "cat 3", hits: "hits 3"),
        Fact(id: "id 4", fact: "Random Fact 4", cat: "cat 4", hits: "hits 4"),
        Fact(id: "id 5", fact: "Random Fact 5", cat: "cat 5", hits: "hits 5")
    ]
}
