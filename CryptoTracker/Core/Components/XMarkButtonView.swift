//
//  XMarkButton.swift
//  CryptoTracker
//
//  Created by Валерий Зазулин on 29.11.2023.
//

import SwiftUI

struct XMarkButtonView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

#Preview {
    XMarkButtonView()
}
