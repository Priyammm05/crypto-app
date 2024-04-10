//
//  XmarkButton.swift
//  crypto-app
//
//  Created by Priyam Soni on 09/04/24.
//

import SwiftUI

struct XmarkButton: View {
    let dismiss: DismissAction
        
    var body: some View {
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        @Environment(\.dismiss) var dismiss
        
        XmarkButton(dismiss: dismiss)
    }
}
