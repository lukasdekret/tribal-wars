//
//  MainBuildingVC.swift
//  tribal-wars
//
//  Created by Lukáš Dekrét on 8.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import UIKit

class MainBuildingVC: UIViewController {
    
    @IBOutlet weak var goldLbl: UILabel!
    @IBOutlet weak var woodLbl: UILabel!
    @IBOutlet weak var peopleLbl: UILabel!
    @IBOutlet weak var spearmenLbl: UILabel!
    @IBOutlet weak var archersLbl: UILabel!
    @IBOutlet weak var ridersLbl: UILabel!
    @IBOutlet weak var goldStockLbl: UILabel!
    @IBOutlet weak var woodStockLbl: UILabel!
    
    var materials: Materials!
    var buildingsLevel: BuildingsLevel!
    var army: Army!

    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
        
        
    }

    
    func setLabels() {
        goldLbl.text = String(materials.gold)
        woodLbl.text = String(materials.wood)
        peopleLbl.text = String(materials.people) + "/" + String(materials.peopleCapacity)
        
        goldStockLbl.text = String(materials.goldCapacity)
        woodStockLbl.text = String(materials.woodCapacity)
        
        spearmenLbl.text = String(army.spearmen)
        archersLbl.text = String(army.archers)
        ridersLbl.text = String(army.riders)
    }
    
    @IBAction func goldTapped(_ sender: Any) {
        performSegue(withIdentifier: "mainToGold", sender: self)
    }
    
    @IBAction func woodTapped(_ sender: Any) {
        performSegue(withIdentifier: "mainToWood", sender: self)
    }
    
    @IBAction func farmTapped(_ sender: Any) {
        performSegue(withIdentifier: "mainToFarm", sender: self)
    }
    
    @IBAction func stockTapped(_ sender: Any) {
        performSegue(withIdentifier: "mainToStock", sender: self)
    }
    
    @IBAction func barracksTapped(_ sender: Any) {
        performSegue(withIdentifier: "mainToBarraks", sender: self)
    }
    
    @IBAction func upgradeTapped(_ sender: Any) {
        performSegue(withIdentifier: "mainToUpgrade", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let upgradeVC = segue.destination as? UpgradeVC {
            upgradeVC.materials = materials
            upgradeVC.buildingsLevel = buildingsLevel
            upgradeVC.army = army
            
        } else if let barracksVC = segue.destination as? BarracksVC {
            barracksVC.materials = materials
            barracksVC.buildingsLevel = buildingsLevel
            barracksVC.army = army
            
        } else if let stockVC = segue.destination as? StockVC {
            stockVC.materials = materials
            stockVC.buildingsLevel = buildingsLevel
            stockVC.army = army
            
        } else if let farmVC = segue.destination as? FarmVC {
            farmVC.materials = materials
            farmVC.buildingsLevel = buildingsLevel
            farmVC.army = army
            
        } else if let goldVC = segue.destination as? GoldVC {
            goldVC.materials = materials
            goldVC.buildingsLevel = buildingsLevel
            goldVC.army = army
            
        } else if let woodVC = segue.destination as? WoodVC {
            woodVC.materials = materials
            woodVC.buildingsLevel = buildingsLevel
            woodVC.army = army
            
        }
    }
    
    @IBAction func unwindFromUpgradeVC(segue: UIStoryboardSegue) {
        if let upgradeVC = segue.source as? UpgradeVC {
            materials = upgradeVC.materials
            buildingsLevel = upgradeVC.buildingsLevel
            army = upgradeVC.army
            setLabels()
        }
    }
}
