//
//  String.swift
//  CryptoTracker
//
//  Created by Валерий Зазулин on 07.01.2024.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
