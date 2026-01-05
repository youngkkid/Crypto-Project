//
//  XMarkButton.swift
//  CryptoProject
//
//  Created by Илья Ануфриев on 05.01.2026.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }, label: {Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

#Preview {
    XMarkButton()
}
