//
//  FactsService.swift
//  Fun Facts JSON API
//
//  Created by Devon Kenneth Hansen on 2021-10-14.
//

import Foundation
import SwiftUI

protocol FactsService {
    func fetchRandomFacts() async throws -> Response
}


final class FactsServiceImpl: FactsService {
    
    func fetchRandomFacts() async throws -> Response {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode(Response.self, from: data)
    }
}
