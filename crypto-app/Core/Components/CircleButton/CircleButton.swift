//
//  CircleButton.swift
//  crypto-app
//
//  Created by Priyam Soni on 04/04/24.
//

import SwiftUI

struct CircleButton: View {
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: 10,
                x: 0, y: 0
            )
            .padding()
    }
}

#Preview {
    CircleButton(iconName: "heart.fill")
}
