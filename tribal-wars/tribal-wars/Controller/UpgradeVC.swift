//
//  UpgradeVC.swift
//  tribal-wars
//
//  Created by Lukáš Dekrét on 8.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import UIKit

class UpgradeVC: UIViewController {
    
    @IBOutlet weak var mainBuildingLevelLbl: UILabel!
    @IBOutlet weak var mainBuildingGoldLbl: UILabel!
    @IBOutlet weak var mainBuildingWoodLbl: UILabel!
    @IBOutlet weak var mainBuildingPeopleLbl: UILabel!
    
    @IBOutlet weak var barracksLevelLbl: UILabel!
    @IBOutlet weak var baracksGoldLbl: UILabel!
    @IBOutlet weak var barracksWoodLbl: UILabel!
    @IBOutlet weak var barracksPeopleLbl: UILabel!
    
    @IBOutlet weak var stockLevelLbl: UILabel!
    @IBOutlet weak var stockGoldLbl: UILabel!
    @IBOutlet weak var stockWoodLbl: UILabel!
    @IBOutlet weak var stockPeopleLbl: UILabel!
    
    @IBOutlet weak var woodLevelLbl: UILabel!
    @IBOutlet weak var woodGoldLbl: UILabel!
    @IBOutlet weak var woodWoodLbl: UILabel!
    @IBOutlet weak var woodPeopleLbl: UILabel!
    
    @IBOutlet weak var goldLevelLbl: UILabel!
    @IBOutlet weak var goldGoldLbl: UILabel!
    @IBOutlet weak var goldWoodLbl: UILabel!
    @IBOutlet weak var goldPeopleLbl: UILabel!
    
    @IBOutlet weak var farmLevelLbl: UILabel!
    @IBOutlet weak var farmGoldLbl: UILabel!
    @IBOutlet weak var farmWoodLbl: UILabel!
    @IBOutlet weak var farmPeopleLbl: UILabel!
    
    @IBOutlet weak var goldLbl: UILabel!
    @IBOutlet weak var woodLbl: UILabel!
    @IBOutlet weak var peopleLbl: UILabel!
    
    
    var materials: Materials!
    var buildingsLevel: BuildingsLevel!
    var army: Army!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMaterials()
        
        fillLevelLabel(label: mainBuildingLevelLbl, level: buildingsLevel.mainBuildingLvl)
        fillLevelLabel(label: barracksLevelLbl, level: buildingsLevel.barracksLvl)
        fillLevelLabel(label: stockLevelLbl, level: buildingsLevel.stockLvl)
        fillLevelLabel(label: woodLevelLbl, level: buildingsLevel.woodLvl)
        fillLevelLabel(label: goldLevelLbl, level: buildingsLevel.goldLvl)
        fillLevelLabel(label: farmLevelLbl, level: buildingsLevel.farmLvl)
        
        fillLabels(labelGold: mainBuildingGoldLbl, labelWood: mainBuildingWoodLbl, labelPeople: mainBuildingPeopleLbl, gold: buildingsLevel.mainBuildingGold, wood: buildingsLevel.mainBuildingWood, people: buildingsLevel.mainBuildingLvl)
        
        fillLabels(labelGold: baracksGoldLbl, labelWood: barracksWoodLbl, labelPeople: barracksPeopleLbl, gold: buildingsLevel.barracksGold, wood: buildingsLevel.barracksWood, people: buildingsLevel.barracksLvl)
        
        fillLabels(labelGold: stockGoldLbl, labelWood: stockWoodLbl, labelPeople: stockPeopleLbl, gold: buildingsLevel.stockGold, wood: buildingsLevel.stockWood, people: buildingsLevel.stockLvl)
        
        fillLabels(labelGold: woodGoldLbl, labelWood: woodWoodLbl, labelPeople: woodPeopleLbl, gold: buildingsLevel.woodGold, wood: buildingsLevel.woodWood, people: buildingsLevel.woodLvl)
        
        fillLabels(labelGold: goldGoldLbl, labelWood: goldWoodLbl, labelPeople: goldPeopleLbl, gold: buildingsLevel.goldGold, wood: buildingsLevel.goldWood, people: buildingsLevel.goldLvl)
        
        fillLabels(labelGold: farmGoldLbl, labelWood: farmWoodLbl, labelPeople: farmPeopleLbl, gold: buildingsLevel.farmGold, wood: buildingsLevel.farmWood, people: 0)
    }

    func fillLevelLabel(label: UILabel, level: Int) {
        label.text = "(" + String(level) + ")"
    }
    
    func fillLabels(labelGold: UILabel, labelWood: UILabel, labelPeople: UILabel, gold: Int, wood: Int, people: Int) {
        labelGold.text = String(gold)
        labelWood.text = String(wood)
        labelPeople.text = String(people)
    }
    
    func setMaterials() {
        goldLbl.text = String(materials.gold)
        woodLbl.text = String(materials.wood)
        peopleLbl.text = String(materials.people) + "/" + String(materials.peopleCapacity)
    }
    
    @IBAction func mainBuildingTapped(_ sender: Any) {
        if buildingsLevel.mainBuildingGold <= materials.gold && buildingsLevel.mainBuildingWood <= materials.wood && buildingsLevel.mainBuildingLvl + materials.people <= materials.peopleCapacity {

            materials.gold -= buildingsLevel.mainBuildingGold
            materials.wood -= buildingsLevel.mainBuildingWood
            materials.people += buildingsLevel.mainBuildingLvl
            
            buildingsLevel.mainBuildingLvl += 1
            buildingsLevel.mainBuildingGold += 5*buildingsLevel.mainBuildingLvl
            buildingsLevel.mainBuildingWood += 5*buildingsLevel.mainBuildingLvl
            
            fillLevelLabel(label: mainBuildingLevelLbl, level: buildingsLevel.mainBuildingLvl)
            fillLabels(labelGold: mainBuildingGoldLbl, labelWood: mainBuildingWoodLbl, labelPeople: mainBuildingPeopleLbl, gold: buildingsLevel.mainBuildingGold, wood: buildingsLevel.mainBuildingWood, people: buildingsLevel.mainBuildingLvl)
            
            setMaterials()
            
        }
    }
    
    @IBAction func barracksTapped(_ sender: Any) {
        if buildingsLevel.barracksGold <= materials.gold && buildingsLevel.barracksWood <= materials.wood && buildingsLevel.barracksLvl + materials.people <= materials.peopleCapacity {
            
            materials.gold -= buildingsLevel.barracksGold
            materials.wood -= buildingsLevel.barracksWood
            materials.people += buildingsLevel.barracksLvl
            
            buildingsLevel.barracksLvl += 1
            buildingsLevel.barracksGold += 5*buildingsLevel.barracksLvl
            buildingsLevel.barracksWood += 5*buildingsLevel.barracksLvl
            
            fillLevelLabel(label: barracksLevelLbl, level: buildingsLevel.barracksLvl)
            fillLabels(labelGold: baracksGoldLbl, labelWood: barracksWoodLbl, labelPeople: barracksPeopleLbl, gold: buildingsLevel.barracksGold, wood: buildingsLevel.barracksWood, people: buildingsLevel.barracksLvl)
            
            setMaterials()
        }
    }
    @IBAction func stockTapped(_ sender: Any) {
        if buildingsLevel.stockGold <= materials.gold && buildingsLevel.stockWood <= materials.wood && buildingsLevel.stockLvl + materials.people <= materials.peopleCapacity {
            
            materials.goldCapacity = Production.countNextCapacity(currentCapacity: materials.goldCapacity)
            materials.woodCapacity = Production.countNextCapacity(currentCapacity: materials.woodCapacity)
            
            materials.gold -= buildingsLevel.stockGold
            materials.wood -= buildingsLevel.stockWood
            materials.people += buildingsLevel.stockLvl
            
            buildingsLevel.stockLvl += 1
            buildingsLevel.stockGold += 5*buildingsLevel.stockLvl
            buildingsLevel.stockWood += 5*buildingsLevel.stockLvl

            fillLevelLabel(label: stockLevelLbl, level: buildingsLevel.stockLvl)
            fillLabels(labelGold: stockGoldLbl, labelWood: stockWoodLbl, labelPeople: stockPeopleLbl, gold: buildingsLevel.stockGold, wood: buildingsLevel.stockWood, people: buildingsLevel.stockLvl)
            
            setMaterials()
        }
    }
    
    @IBAction func woodTapped(_ sender: Any) {
        if buildingsLevel.woodGold <= materials.gold && buildingsLevel.woodWood <= materials.wood && buildingsLevel.woodLvl + materials.people <= materials.peopleCapacity {
            buildingsLevel.woodProduction = Production.countNextProduction(currentProduction: buildingsLevel.woodProduction, level: buildingsLevel.woodLvl)
            
            materials.gold -= buildingsLevel.woodGold
            materials.wood -= buildingsLevel.woodWood
            materials.people += buildingsLevel.woodLvl
            
            buildingsLevel.woodLvl += 1
            buildingsLevel.woodWood += 5*buildingsLevel.woodLvl
            buildingsLevel.woodGold += 5*buildingsLevel.woodLvl
            
            fillLabels(labelGold: woodGoldLbl, labelWood: woodWoodLbl, labelPeople: woodPeopleLbl, gold: buildingsLevel.woodGold, wood: buildingsLevel.woodWood, people: buildingsLevel.woodLvl)
            fillLevelLabel(label: woodLevelLbl, level: buildingsLevel.woodLvl)
            
            setMaterials()
        }
    }
    
    @IBAction func goldTapped(_ sender: Any) {

        if buildingsLevel.goldGold <= materials.gold && buildingsLevel.goldWood <= materials.wood && buildingsLevel.goldLvl + materials.people <= materials.peopleCapacity {
            buildingsLevel.goldProduction = Production.countNextProduction(currentProduction: buildingsLevel.goldProduction, level: buildingsLevel.goldLvl)
            
            materials.gold -= buildingsLevel.goldGold
            materials.wood -= buildingsLevel.goldWood
            materials.people += buildingsLevel.goldLvl
            
            buildingsLevel.goldLvl += 1
            buildingsLevel.goldWood += 5*buildingsLevel.goldLvl
            buildingsLevel.goldGold += 5*buildingsLevel.goldLvl
            
            fillLabels(labelGold: goldGoldLbl, labelWood: goldWoodLbl, labelPeople: goldPeopleLbl, gold: buildingsLevel.goldGold, wood: buildingsLevel.goldWood, people: buildingsLevel.goldLvl)
            fillLevelLabel(label: goldLevelLbl, level: buildingsLevel.goldLvl)
            
            setMaterials()
        }
    }
    
    
    @IBAction func farmTapped(_ sender: Any) {
        if buildingsLevel.farmGold <= materials.gold && buildingsLevel.farmWood <= materials.wood {
            materials.peopleCapacity = Production.countNextFarmCapacity(currentCapacity: materials.peopleCapacity)
            
            materials.gold -= buildingsLevel.farmGold
            materials.wood -= buildingsLevel.farmWood
            
            buildingsLevel.farmLvl += 1
            buildingsLevel.farmWood += 5*buildingsLevel.farmLvl
            buildingsLevel.farmGold += 5*buildingsLevel.farmLvl
            
            fillLabels(labelGold: farmGoldLbl, labelWood: farmWoodLbl, labelPeople: farmPeopleLbl, gold: buildingsLevel.farmGold, wood: buildingsLevel.farmWood, people: 0)
            fillLevelLabel(label: farmLevelLbl, level: buildingsLevel.farmLvl)
            
            setMaterials() 

        }
    }
}
