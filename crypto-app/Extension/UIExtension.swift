//
//  UIExtension.swift
//  crypto-app
//
//  Created by Priyam Soni on 08/04/24.
//

import Foundation
import SwiftUI

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
