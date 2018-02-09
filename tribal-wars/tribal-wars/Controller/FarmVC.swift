//
//  FarmVC.swift
//  tribal-wars
//
//  Created by Lukáš Dekrét on 8.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import UIKit

class FarmVC: UIViewController {
    
    @IBOutlet weak var farmCapacity: UILabel!
    @IBOutlet weak var armyLbl: UILabel!
    @IBOutlet weak var buildingsLbl: UILabel!
    @IBOutlet weak var nextFarmCapacity: UILabel!
    
    var materials: Materials!
    var buildingsLevel: BuildingsLevel!
    var army: Army!

    override func viewDidLoad() {
        super.viewDidLoad()

        farmCapacity.text = String(materials.peopleCapacity)
        let help: Int = countArmyNumbers(army: army)
        armyLbl.text = String(help)
        buildingsLbl.text = String(materials.people - help)
        nextFarmCapacity.text = String(Production.countNextFarmCapacity(currentCapacity: materials.peopleCapacity))
        // Do any additional setup after loading the view.
    }

    
    func countArmyNumbers(army: Army) -> Int {
        return army.archers + army.spearmen + army.riders*3
    }
    

}
