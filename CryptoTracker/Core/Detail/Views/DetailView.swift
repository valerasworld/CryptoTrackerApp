//
//  DetailView.swift
//  CryptoTracker
//
//  Created by Валерий Зазулин on 04.01.2024.
//

import SwiftUI

struct DetailLoadingView: View {
    
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
        
    }
    
}

struct DetailView: View {
    
    @StateObject var viewModel: DetailViewModel
        
    init(coin: CoinModel) {
        _viewModel = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("Initializing DetailView for \(coin.name)")
    }
    
    var body: some View {
        Text("Hello")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
