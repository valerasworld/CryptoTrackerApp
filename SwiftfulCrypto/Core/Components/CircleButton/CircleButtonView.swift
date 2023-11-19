//
//  CircleButtonView.swift
//  SwiftfulCrypto
//
//  Created by Валерий Зазулин on 19.11.2023.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundStyle(Color.theme.background)
                    
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/
            )
            .padding()
    }
}

#Preview {
//    CircleButtonView(iconName: "info")
//        .previewLayout(.sizeThatFits)
    CircleButtonView(iconName: "plus")
        .previewLayout(.sizeThatFits)
    
}
