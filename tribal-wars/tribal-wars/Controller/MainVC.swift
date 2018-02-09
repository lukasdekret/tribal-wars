//
//  ViewController.swift
//  tribal-wars
//
//  Created by Lukáš Dekrét on 8.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var goldLbl: UILabel!
    @IBOutlet weak var woodLbl: UILabel!
    @IBOutlet weak var peopleLbl: UILabel!
    
    var materials: Materials!
    var buildingsLevel: BuildingsLevel!
    var army: Army!
    
    
    override func viewDidLoad() { // vykona sa iba raz
        super.viewDidLoad()

        materials = Materials() // TODO zmenit pociatocny pocet meterialu
        materials.gold = 0;
        materials.wood = 0;
        materials.people = 1;
        materials.goldCapacity = 100
        materials.woodCapacity = 100
        materials.peopleCapacity = 20
        
        buildingsLevel = BuildingsLevel()
        buildingsLevel.mainBuildingLvl = 1
        buildingsLevel.barracksLvl = 1
        buildingsLevel.stockLvl = 1
        buildingsLevel.woodLvl = 1
        buildingsLevel.goldLvl = 1
        buildingsLevel.farmLvl = 1
        
        buildingsLevel.mainBuildingGold = 20
        buildingsLevel.mainBuildingWood = 25
        
        buildingsLevel.barracksGold = 40
        buildingsLevel.barracksWood = 20
        
        buildingsLevel.stockGold = 15
        buildingsLevel.stockWood = 40
        
        buildingsLevel.woodGold = 35
        buildingsLevel.woodWood = 10
        
        buildingsLevel.goldGold = 12
        buildingsLevel.goldWood = 40
        
        buildingsLevel.farmGold = 20
        buildingsLevel.farmWood = 25
        
        buildingsLevel.goldProduction = 1
        buildingsLevel.woodProduction = 1
        
        army = Army() // TODO zmenit pociatocny pocet armady

        army.spearmen = 0
        army.archers = 0
        army.riders = 0
        
        setLabels()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func mainBuilding(_ sender: Any) {
        performSegue(withIdentifier: "welcomeToMainBuilding", sender: self)
    }
    
    @IBAction func barracks(_ sender: Any) {
        performSegue(withIdentifier: "welcomeToBaracks", sender: self)
    }
    
    @IBAction func stock(_ sender: Any) {
        performSegue(withIdentifier: "welcomeToStock", sender: self)
    }
    
    @IBAction func wood(_ sender: Any) {
        performSegue(withIdentifier: "welcomeToWood", sender: self)
    }
    
    @IBAction func gold(_ sender: Any) {
        performSegue(withIdentifier: "welcomeToGold", sender: self)
    }
    
    @IBAction func farm(_ sender: Any) {
        performSegue(withIdentifier: "welcomeToFarm", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let mainBuildingVC = segue.destination as? MainBuildingVC {
            mainBuildingVC.materials = materials
            mainBuildingVC.buildingsLevel = buildingsLevel
            mainBuildingVC.army = army
            
        } else if let barracksVC = segue.destination as? BarracksVC {
            barracksVC.materials = materials
            barracksVC.buildingsLevel = buildingsLevel
            barracksVC.army = army
            
        } else if let stockVC = segue.destination as? StockVC {
            stockVC.materials = materials
            stockVC.buildingsLevel = buildingsLevel
            stockVC.army = army
            
        } else if let woodVC = segue.destination as? WoodVC {
            woodVC.materials = materials
            woodVC.buildingsLevel = buildingsLevel
            woodVC.army = army
            
        } else if let goldVC = segue.destination as? GoldVC {
            goldVC.materials = materials
            goldVC.buildingsLevel = buildingsLevel
            goldVC.army = army
            
        } else if let farmVC = segue.destination as? FarmVC {
            farmVC.materials = materials
            farmVC.buildingsLevel = buildingsLevel
            farmVC.army = army
            
        }
    }
    
    
    
    @IBAction func unwindFromMainBuildingVC(segue: UIStoryboardSegue) {
        if let mainBuildingVC = segue.source as? MainBuildingVC {
            materials = mainBuildingVC.materials
            buildingsLevel = mainBuildingVC.buildingsLevel
            army = mainBuildingVC.army
        }
        setLabels()
        
    }
    
    @IBAction func unwindFromBarracksVC(segue: UIStoryboardSegue) {
        if let barracksVC = segue.source as? BarracksVC {
            materials = barracksVC.materials
            buildingsLevel = barracksVC.buildingsLevel
            army = barracksVC.army
        }
        setLabels()
    }
    
    @IBAction func unwindFromStockVC(segue: UIStoryboardSegue) {
        if let stockVC = segue.source as? StockVC {
            materials = stockVC.materials
            buildingsLevel = stockVC.buildingsLevel
            army = stockVC.army
        }
        setLabels()
    }
    
    @IBAction func unwindFromWoodVC(segue: UIStoryboardSegue) {
        if let woodVC = segue.source as? WoodVC {
            materials = woodVC.materials
            buildingsLevel = woodVC.buildingsLevel
            army = woodVC.army
        }
        setLabels()
    }
    
    @IBAction func unwindFromGoldVC(segue: UIStoryboardSegue) {
        if let goldVC = segue.source as? GoldVC {
            materials = goldVC.materials
            buildingsLevel = goldVC.buildingsLevel
            army = goldVC.army
        }
        setLabels()
    }
    
    @IBAction func unwindFromFarmVC(segue: UIStoryboardSegue) {
        if let farmVC = segue.source as? FarmVC {
            materials = farmVC.materials
            buildingsLevel = farmVC.buildingsLevel
            army = farmVC.army
        }
        setLabels()
    }
    
    func setLabels() {
        goldLbl.text = String(materials.gold)
        woodLbl.text = String(materials.wood)
        peopleLbl.text = String(materials.people) + "/" + String(materials.peopleCapacity)
    }
    
}

