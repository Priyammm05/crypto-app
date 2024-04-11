//
//  DetailView.swift
//  crypto-app
//
//  Created by Priyam Soni on 10/04/24.
//

import SwiftUI

struct DetailLoadingView: View{
    @Binding var coin: CoinModel?
    
    var body: some View{
        ZStack{
            if let coin = coin{
                Text(coin.name)
            }
        }
    }
}

struct DetailView: View {
    @StateObject var viewModel: DetailViewModel
    let coin: CoinModel
    
    init(coin: CoinModel) {
        _viewModel = StateObject(wrappedValue: DetailViewModel(coin: coin))
        self.coin = coin
    }
    
    var body: some View {
        Text(coin.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(coin: dev.coin)
        }
    }
}
