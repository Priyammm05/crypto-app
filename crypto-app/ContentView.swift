//
//  ContentView.swift
//  crypto-app
//
//  Created by Priyam Soni on 04/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .background(Color.theme.secondaryText)
        .padding()
    }
}

#Preview {
    ContentView()
}
