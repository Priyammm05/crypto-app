//
//  HapticManger.swift
//  crypto-app
//
//  Created by Priyam Soni on 10/04/24.
//

import Foundation
import SwiftUI

class HapticManger{
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType){
        generator.notificationOccurred(type)
    }
}
