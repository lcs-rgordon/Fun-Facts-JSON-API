//
//  FactsScreen.swift
//  Fun Facts JSON API
//
//  Created by Devon Kenneth Hansen on 2021-10-14.
//

import SwiftUI

struct FactsScreen: View {
    
    
    var body: some View {
        
        List {
            ForEach(Fact.dummyData, id: \.cat) { item in
                VStack(alignment: .leading,
                       spacing: 8) {
                    HStack {
                        Image(systemName: "tv")
                            .font(.system(size: 12, weight: .black))
                        Text(item.cat)
                    }
                    
                    Text(makeAttributedString(title:"Cat", label: item.cat))
                    Text(makeAttributedString(title:"Facts", label: item.fact))
                        .lineLimit(2)
                }
                .padding()
                .foregroundColor(.black)
            }
        }
    }
    
    private func makeAttributedString(title: String, label: String) -> AttributedString {
        
        var string = AttributedString("\(title): \(label)")
        string.foregroundColor = .black
        string.font = .system(size: 16, weight: .bold)
        
        if let range = string.range(of: label) {
            string[range].foregroundColor = .black.opacity(0.0)
            string[range].font = .system(size: 16, weight: .regular)
            
        }
        return string
    }
}

struct FactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        FactsScreen()
    }
}
