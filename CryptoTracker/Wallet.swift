//
//  Wallet.swift
//  CryptoTracker
//
//  Created by Ana Neto on 06/06/2018.
//  Copyright © 2018 Ana Neto. All rights reserved.
//

import Foundation

class Wallet {
    
    static let shared = Wallet()
    
    var coins: [Coin] = []
    
    private init() {
        
        let symbols = ["BTC", "ETH", "LTC"]
        
        for symbol in symbols {
            coins.append(Coin(with: symbol))
        }
    }
    
    
}
