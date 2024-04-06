//
//  HomeViewModel.swift
//  crypto-app
//
//  Created by Priyam Soni on 05/04/24.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject{
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let coinDataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscriber()
    }
    
    func addSubscriber(){
        coinDataService.$allCoins
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}
