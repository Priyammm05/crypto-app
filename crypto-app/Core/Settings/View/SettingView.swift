//
//  SettingView.swift
//  crypto-app
//
//  Created by Priyam Soni on 12/04/24.
//

import SwiftUI

struct SettingView: View {
    
    let discordURL = URL(string: "https://discord.com/users/Priyamm#5570")!
    let mediumURL = URL(string: "https://medium.com/@priyammm")!
    let twitterURL = URL(string: "https://twitter.com/priyaamm")!
    let linkedInURL = URL(string: "https://www.linkedin.com/in/priyam-soni-767712203/")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let githubURL = URL(string: "https://github.com/Priyammm05")!
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.theme.background
                    .ignoresSafeArea()
                
                // content
                List {
                    connectSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XmarkButton(dismiss: dismiss)
                }
            }
        }
    }
}
#Preview {
    SettingView()
}

extension SettingView{

    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Get the complete code for this amazing Appliaction on my GitHub.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("GitHub", destination: githubURL)
        }
    }
    
    private var connectSection: some View {
        Section(header: Text("Developer Connect")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Priyam Soni. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers, and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Discord", destination: discordURL)
            Link("LinkedIn", destination: linkedInURL)
            Link("Twitter", destination: twitterURL)
            Link("Medium", destination: mediumURL)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🦎", destination: coingeckoURL)
        }
    }



    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of Service", destination: linkedInURL)
            Link("Privacy Policy", destination: linkedInURL)
            Link("Company Website", destination: linkedInURL)
            Link("Learn More", destination: linkedInURL)
        }
    }
}
