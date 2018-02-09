//
//  GoldVC.swift
//  tribal-wars
//
//  Created by Lukáš Dekrét on 8.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import UIKit

class GoldVC: UIViewController {
    
    @IBOutlet weak var goldLbl: UILabel!
    @IBOutlet weak var woodLbl: UILabel!
    @IBOutlet weak var peopleLbl: UILabel!
    @IBOutlet weak var productionLbl: UILabel!
    @IBOutlet weak var nextProductionLbl: UILabel!
    
    var materials: Materials!
    var buildingsLevel: BuildingsLevel!
    var army: Army!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        goldLbl.text = String(materials.gold)
        woodLbl.text = String(materials.wood)
        peopleLbl.text = String(materials.people) + "/" + String(materials.peopleCapacity)
        
        productionLbl.text = String(buildingsLevel.goldProduction)
        nextProductionLbl.text = String(Production.countNextProduction(currentProduction: buildingsLevel.goldProduction, level: buildingsLevel.goldLvl))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mineTapped(_ sender: Any) {
        
        materials.gold += buildingsLevel.goldProduction
        if materials.gold > materials.goldCapacity {
            materials.gold = materials.goldCapacity
        }
        goldLbl.text = String(materials.gold)
    }
    

}
