//
//  DetailViewModel.swift
//  CryptoTracker
//
//  Created by Валерий Зазулин on 06.01.2024.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { returnedCoinDetails in
                print("RECEIVED COIN DETAIL DATA")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
        
    }
}
