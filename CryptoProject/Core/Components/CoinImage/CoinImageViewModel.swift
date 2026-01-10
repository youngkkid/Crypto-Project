//
//  CoinImageViewModel.swift
//  CryptoProject
//
//  Created by Илья Ануфриев on 03.01.2026.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = true
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        dataService.$image
            .sink { [weak self] (_) in
                guard let self = self else {return}
                self.isLoading = false
            } receiveValue: { [weak self] (returnedImage) in
                guard let self = self else {return}
                self.image = returnedImage
            }
            .store(in: &cancellables)

    }
}

