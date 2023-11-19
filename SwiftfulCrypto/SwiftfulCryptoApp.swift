//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by Валерий Зазулин on 18.11.2023.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .toolbar(.hidden)
            }
        }
    }
}
