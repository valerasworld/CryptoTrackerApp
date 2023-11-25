//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Валерий Зазулин on 18.11.2023.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .toolbar(.hidden)
            }
            .environmentObject(viewModel)
        }
    }
}
