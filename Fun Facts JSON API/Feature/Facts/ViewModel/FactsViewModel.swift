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
            self.facts = try await service.fetchRandomFacts()
        } catch {
            print(error)
        }
    }
}
