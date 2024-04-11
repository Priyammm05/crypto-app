//
//  DetailViewModel.swift
//  crypto-app
//
//  Created by Priyam Soni on 11/04/24.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject{
    private let coinDetailService: CoinDetailDataService
    
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
    }
    
    private func addSubscribers(){
        coinDetailService.$coinDetails
            .sink { (receivedCoinDetails) in
                print("Received Coin Detail Data")
                print(receivedCoinDetails)
            }
            .store(in: &cancellables)
    }
}
