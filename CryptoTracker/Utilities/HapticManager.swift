//
//  HapticManager.swift
//  CryptoTracker
//
//  Created by Валерий Зазулин on 03.12.2023.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notifiaction(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
