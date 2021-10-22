//
//  FactsScreen.swift
//  Fun Facts JSON API
//
//  Created by Devon Kenneth Hansen on 2021-10-14.
//

import SwiftUI

struct FactsScreen: View {
    
    @StateObject private var vm = FactsViewModelImpl(
        service: FactsServiceImpl()
    )
    
    var body: some View {

        VStack {
            if vm.facts.isEmpty {
                VStack(spacing: 8) {
                    LoadingView(text: "Fetching Fun Facts")
                }
            } else {
                List {
                    ForEach(vm.facts, id: \.cat) { item in
                        FactView(item: item)
                    }
                }
            }
        }
        .task {
            await vm.getRandomFacts()
        }
    }
    
    struct FactsScreen_Previews: PreviewProvider {
        static var previews: some View {
            FactsScreen()
        }
    }
}
