//
//  CryptoTableViewController.swift
//  CryptoTracker
//
//  Created by Ana Neto on 05/06/2018.
//  Copyright © 2018 Ana Neto. All rights reserved.
//

import UIKit

class CryptoTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Wallet.shared.coins.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let coin = Wallet.shared.coins[indexPath.row]
        
        cell.textLabel?.text = coin.symbol
        cell.imageView?.image = coin.image
        
        return cell
    }

}
