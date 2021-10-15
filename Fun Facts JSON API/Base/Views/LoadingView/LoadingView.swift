//
//  LoadingView.swift
//  Fun Facts JSON API
//
//  Created by Devon Kenneth Hansen on 2021-10-15.
//

import SwiftUI

struct LoadingView: View {
    
    let text: String
    
    var body: some View {
        VStack(spacing: 8) {
            ProgressView()
            Text(text)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: "Fethching Facts")
    }
}
