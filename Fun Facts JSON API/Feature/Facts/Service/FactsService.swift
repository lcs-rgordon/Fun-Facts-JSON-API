//
//  FactsService.swift
//  Fun Facts JSON API
//
//  Created by Devon Kenneth Hansen on 2021-10-14.
//

import Foundation

protocol FactsService {
    func fetchRandomFacts() async throws -> [Fact]
}

final class FactsServiceImpl: FactsService {
    
    func fetchRandomFacts() async throws -> [Fact] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/api/facts"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([Fact].self, from: data)
    }
}
