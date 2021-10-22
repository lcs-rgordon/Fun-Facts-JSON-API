//
//  FactView.swift
//  Fun Facts JSON API
//
//  Created by Russell Gordon on 2021-10-22.
//

import SwiftUI

struct FactView: View {
    
    let item: Fact
    
    var body: some View {
        Text(item.fact)
    }
}

struct FactView_Previews: PreviewProvider {
    static var previews: some View {
        FactView(item: Fact.dummyData)
    }
}
