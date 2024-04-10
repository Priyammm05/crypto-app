//
//  SearchBarView.swift
//  crypto-app
//
//  Created by Priyam Soni on 08/04/24.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ?
                    Color.theme.secondaryText :
                        Color.theme.accent
                )
            
            TextField("Search by name or symbol...", text: $searchText)
                .foregroundColor(Color.theme.accent)
                .autocorrectionDisabled(true)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(Color.theme.accent)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                    ,
                    alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color.theme.background)
                .shadow(
                    color: Color.theme.accent.opacity(0.15),
                    radius: 10,
                    x: 0,
                    y: 0
                )
        )
        .padding()
    }
}

#Preview {
    SearchBarView(searchText: .constant(""))
}
