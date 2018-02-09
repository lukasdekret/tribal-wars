//
//  StockVC.swift
//  tribal-wars
//
//  Created by Lukáš Dekrét on 8.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import UIKit

class StockVC: UIViewController {
    @IBOutlet weak var stockCapacity: UILabel!
    @IBOutlet weak var goldLbl: UILabel!
    @IBOutlet weak var woodLbl: UILabel!
    @IBOutlet weak var nextLevelCapacity: UILabel!
    
    var materials: Materials!
    var buildingsLevel: BuildingsLevel!
    var army: Army!

    override func viewDidLoad() {
        super.viewDidLoad()

        stockCapacity.text = String(materials.woodCapacity)
        goldLbl.text = String(materials.gold)
        woodLbl.text = String(materials.wood)
        nextLevelCapacity.text = String(Production.countNextCapacity(currentCapacity: materials.goldCapacity))

    }

}
