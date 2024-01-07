//
//  SettingsView.swift
//  CryptoTracker
//
//  Created by Валерий Зазулин on 07.01.2024.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let coffeeURL = URL(string: "https://www.buymeacoffee.com/nicksarno")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    let githubURL = URL(string: "http://www.github.com/valerasworld")!
    
    var body: some View {
        NavigationView {
            List {
                swiftfulThinkingSection
                coinGeckoSection
                developerSection
                applicationSection
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    XMarkButtonView()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var swiftfulThinkingSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a @SwiftfulThinkng course on YouTube. It uses MVVM Architecture, Combine and CoreData.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical, 4)
            Link("Subscribe on YouTube 🥳", destination: youtubeURL)
                .foregroundStyle(Color.blue)
                .font(.headline)
            Link("Support his coffee addiction ☕️", destination: coffeeURL)
                .foregroundStyle(Color.blue)
                .font(.headline)

        } header: {
            Text("Swiftful  Thinking")
        }
    }
    
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API by CoinGecko. Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical, 4)
            Link("Visit CoinGecko 🦎", destination: coinGeckoURL)
                .foregroundStyle(Color.blue)
                .font(.headline)
        } header: {
            Text("Coingecko")
        }
    }
    
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("headshot")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Valerii Zazulin. It uses SwiftUI and written 100% in Swift. The project benefits from multi-threading, publishers/subscribers and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical, 4)
            Link("Check out my GitHub 👾", destination: githubURL)
                .foregroundStyle(Color.blue)
                .font(.headline)
        } header: {
            Text("Developer")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Terms of Service", destination: defaultURL)
                .foregroundStyle(Color.blue)
                .font(.headline)
            Link("Privacy Policy", destination: defaultURL)
                .foregroundStyle(Color.blue)
                .font(.headline)
            Link("Company Website", destination: defaultURL)
                .foregroundStyle(Color.blue)
                .font(.headline)
            Link("Learn More", destination: defaultURL)
                .foregroundStyle(Color.blue)
                .font(.headline)
        } header: {
            Text("Application")
        }
    }
    
}
