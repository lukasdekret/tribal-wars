//
//  WoodVC.swift
//  tribal-wars
//
//  Created by Lukáš Dekrét on 8.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import UIKit

class WoodVC: UIViewController {
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
        
        productionLbl.text = String(buildingsLevel.woodProduction)
        nextProductionLbl.text = String(Production.countNextProduction(currentProduction: buildingsLevel.woodProduction, level: buildingsLevel.woodLvl))

        // Do any additional setup after loading the view.
    }


    @IBAction func mineTapped(_ sender: Any) {
        
        materials.wood += buildingsLevel.woodProduction
        if materials.wood > materials.woodCapacity {
            materials.wood = materials.woodCapacity
        }
        woodLbl.text = String(materials.wood)
    }
    
    

}
