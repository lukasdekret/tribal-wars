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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        materials = Materials()
        materials.gold = 0;
        materials.wood = 0;
        materials.people = 20;
        materials.goldCapacity = 1000
        materials.woodCapacity = 1000
        materials.peopleCapacity = 20
        
        buildingsLevel = BuildingsLevel()
        buildingsLevel.mainBuildingLvl = 1
        buildingsLevel.barracksLvl = 1
        buildingsLevel.stockLvl = 1
        buildingsLevel.woodLvl = 1
        buildingsLevel.goldLvl = 1
        buildingsLevel.farmLvl = 1
        
        army = Army()
        army.spearmen = 0
        army.archers = 0
        army.riders = 0

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
        
    }
    
    @IBAction func unwindFromBarracksVC(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func unwindFromStockVC(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func unwindFromWoodVC(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func unwindFromGoldVC(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func unwindFromFarmVC(segue: UIStoryboardSegue) {
        
    }
    
}

