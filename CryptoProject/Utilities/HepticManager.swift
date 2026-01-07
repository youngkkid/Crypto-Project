//
//  HepticManager.swift
//  CryptoProject
//
//  Created by Илья Ануфриев on 06.01.2026.
//

import Foundation
import SwiftUI

class HepticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
