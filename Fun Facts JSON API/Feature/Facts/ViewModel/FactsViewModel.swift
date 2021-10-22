//
//  FactsViewModel.swift
//  Fun Facts JSON API
//
//  Created by Devon Kenneth Hansen on 2021-10-15.
//

import Foundation

protocol FactsViewModel: ObservableObject {
    func getRandomFacts() async
}

@MainActor
final class FactsViewModelImpl: FactsViewModel {
    
    @Published private(set) var facts: [Fact] = []
    
    private let service: FactsService
    
    init(service: FactsService) {
        self.service = service
    }
    
    func getRandomFacts() async {
        do {
            // Get the response
            let response = try await service.fetchRandomFacts()
            
            // Take the fact out of the response and append it to the list of facts
            facts.append(response.data)
            
        } catch {
            print(error)
        }
    }
}
