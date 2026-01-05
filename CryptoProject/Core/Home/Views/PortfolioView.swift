//
//  PortfolioView.swift
//  CryptoProject
//
//  Created by Илья Ануфриев on 05.01.2026.
//

import SwiftUI

struct PortfolioView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Portfolio")
                }
            }
            .navigationTitle("Edit Portfolio")
            .navigationBarItems(leading:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {Image(systemName: "xmark")
                    .font(.headline)
            })
            )
        }
    }
}

#Preview {
    PortfolioView()
}
