//
//  CryptoProjectApp.swift
//  CryptoProject
//
//  Created by Илья Ануфриев on 30.12.2025.
//

import SwiftUI

@main
struct CryptoProjectApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
