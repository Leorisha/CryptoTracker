//
//  Coin.swift
//  CryptoTracker
//
//  Created by Ana Neto on 06/06/2018.
//  Copyright © 2018 Ana Neto. All rights reserved.
//

import UIKit

class Coin {
    var symbol = ""
    var image = UIImage()
    var price = 0.0
    var amount = 0.0
    var historicData = [Double]()
    
    init(with symbol: String) {
        self.symbol = symbol
        if let image = UIImage(named: symbol.lowercased()) {
            self.image = image
        }
    }
}
