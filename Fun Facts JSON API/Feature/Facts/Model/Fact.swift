//
//  Fact.swift
//  Fun Facts JSON API
//
//  Created by Devon Kenneth Hansen on 2021-10-14.
//

import Foundation
import SwiftUI

struct Fact: Decodable {
    let id: Int
    let fact: String
    let cat: String
    let hits: Int
}

