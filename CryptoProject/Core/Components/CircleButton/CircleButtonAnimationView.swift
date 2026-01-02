//
//  CircleButtonAnimationView.swift
//  CryptoProject
//
//  Created by Илья Ануфриев on 30.12.2025.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding  var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .scaleEffect(animate ? 1.0 : 0.0)
            .animation(animate ? .easeOut(duration: 1.0) : nil, value: animate)
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
        .frame(width: 200, height: 200)
        .foregroundColor(.red)
}
