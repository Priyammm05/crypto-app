//
//  String.swift
//  crypto-app
//
//  Created by Priyam Soni on 12/04/24.
//

import Foundation

extension String{
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
