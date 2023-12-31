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
    @State private var showLaunchView: Bool = true
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UITableView.appearance().backgroundColor = UIColor.clear
        UINavigationBar.appearance().tintColor  = UIColor(Color.theme.accent)
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationStack {
                    HomeView()
                        .toolbar(.hidden)
                }
                .toolbarRole(.navigationStack)
                .environmentObject(viewModel)
                
                ZStack {
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0)
            }
        }
    }
}
