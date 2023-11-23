//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Валерий Зазулин on 23.11.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
