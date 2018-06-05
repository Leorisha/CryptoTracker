//
//  Wallet.swift
//  CryptoTracker
//
//  Created by Ana Neto on 06/06/2018.
//  Copyright © 2018 Ana Neto. All rights reserved.
//

import Foundation
import Alamofire

class Wallet {
    
    static let shared = Wallet()
    
    var coins: [Coin] = []
    var coinListDescription : String {
        var listOfSymbols = ""
        
        for coin in coins {
            listOfSymbols += coin.symbol
            listOfSymbols += coin.symbol != coins.last?.symbol ? "," : ""
        }
        
        return listOfSymbols
    }
    
    private init() {

        let symbols = ["BTC", "ETH", "LTC"]

        for symbol in symbols {
            coins.append(Coin(with: symbol))
        }
    }
    
    func getPrices() {
        
        let url = "https://min-api.cryptocompare.com/data/pricemulti?fsyms=\(coinListDescription)&tsyms=USD"
        Alamofire
    }
}
