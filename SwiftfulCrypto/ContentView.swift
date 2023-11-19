//
//  ContentView.swift
//  SwiftfulCrypto
//
//  Created by Валерий Зазулин on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Accent Color")
                    .foregroundStyle(Color.theme.accent)
                
                Text("Secondary Text Color")
                    .foregroundStyle(Color.theme.secondaryText)

                Text("Red Color")
                    .foregroundStyle(Color.theme.red)

                Text("Green Color")
                    .foregroundStyle(Color.theme.green)
            }
            .font(.headline)
            
        }
    }
}

#Preview {
    ContentView()
}
