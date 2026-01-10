//
//  SettingsView.swift
//  CryptoProject
//
//  Created by Илья Ануфриев on 08.01.2026.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtube = URL(string: "https://www.youtube.com")!
    let coffeeURL = URL(string: "https://www.buymeacoffee.com/nicksarno")!
    let coingeckoURL  = URL(string: "https://api.coingecko.com")!
    let personalURL = URL(string: "https://www.google.com")!
    
    
    var body: some View {
        NavigationView {
            List {
                swiftfulThinkingLink
                coingeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .accentColor(Color.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle(Text("Settings"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}


extension SettingsView {
    private var swiftfulThinkingLink: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a @SwiftfulThinking course on YouTube. It uses MVVM architecture, Combine and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe on YouTube 🔥", destination: youtube)
            Link("Support his coffee addiction ☕️", destination: coffeeURL)
        } header: {
            Text("Swiftful Thinking")
        }
    }
    
    private var coingeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🔥", destination: coingeckoURL)
        } header: {
            Text("CoinGecko")
        }
    }
    
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by me. It uses SwiftUI and it's written 100% in Swift!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Check out my portfolio 🔥", destination: coingeckoURL)
        } header: {
            Text("Developer")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        } header: {
            Text("Aplication")
        }
    }
    
}

#Preview {
    SettingsView()
}
