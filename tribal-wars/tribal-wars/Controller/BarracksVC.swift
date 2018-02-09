//
//  BarracksVC.swift
//  tribal-wars
//
//  Created by Lukáš Dekrét on 8.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import UIKit

class BarracksVC: UIViewController {
    
    @IBOutlet weak var goldLbl: UILabel!
    @IBOutlet weak var woodLbl: UILabel!
    @IBOutlet weak var peopleLbl: UILabel!
    @IBOutlet weak var numOfSpearmenLbl: UILabel!
    @IBOutlet weak var numOfArchersLbl: UILabel!
    @IBOutlet weak var numOfRidersLbl: UILabel!
    @IBOutlet weak var spearmenTxt: UITextField!
    @IBOutlet weak var archersTxt: UITextField!
    @IBOutlet weak var ridersTxt: UITextField!
    
    @IBOutlet weak var resultGoldLbl: UILabel!
    @IBOutlet weak var resultWoodLbl: UILabel!
    @IBOutlet weak var resultPeopleLbl: UILabel!
    
    var materials: Materials!
    var buildingsLevel: BuildingsLevel!
    var army: Army!

    override func viewDidLoad() {
        super.viewDidLoad()

        fillLabels()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fillNumberOfArmyLabel(label: UILabel, level: Int) {
        label.text = "(" + String(level) + ")"
    }
    
    @IBAction func countCostTapped(_ sender: Any) {
        
        var gold: Int = 0
        var wood: Int = 0
        var people: Int = 0
        
        if let spearmen = Int((spearmenTxt.text)!) {
            gold += spearmen*15
            wood += spearmen*10
            people += spearmen
        }
        
        
        if let archers = Int((archersTxt.text)!) {
            gold += archers*10
            wood += archers*25
            people += archers
        }
        
        if let riders = Int((ridersTxt.text)!) {
            gold += riders*30
            wood += riders*35
            people += riders*3
        }
        
        resultGoldLbl.text = String(gold)
        resultWoodLbl.text = String(wood)
        resultPeopleLbl.text = String(people)
        
    }
    
    @IBAction func recruitTapped(_ sender: Any) {
        var gold: Int = 0
        var wood: Int = 0
        var people: Int = 0
        var s: Int = 0
        var a: Int = 0
        var r: Int = 0
        
        if let spearmen = Int((spearmenTxt.text)!) {
            gold += spearmen*15
            wood += spearmen*10
            people += spearmen
            spearmenTxt.text = ""
            s = spearmen
        }
        
        
        if let archers = Int((archersTxt.text)!) {
            gold += archers*10
            wood += archers*25
            people += archers
            archersTxt.text = ""
            a = archers
        }
        
        if let riders = Int((ridersTxt.text)!) {
            gold += riders*30
            wood += riders*35
            people += riders*3
            ridersTxt.text = ""
            r = riders
        }
        
        if gold > materials.gold || wood > materials.wood || people > (materials.peopleCapacity - materials.people) {
            return
        }
        
        materials.gold -= gold
        materials.wood -= wood
        materials.people += people
        
        army.spearmen += s
        army.archers += a
        army.riders += r
        fillLabels()
        
    }
    
    func fillLabels() {
        goldLbl.text = String(materials.gold)
        woodLbl.text = String(materials.wood)
        peopleLbl.text = String(materials.people) + "/" + String(materials.peopleCapacity)
        
        fillNumberOfArmyLabel(label: numOfSpearmenLbl, level: army.spearmen)
        fillNumberOfArmyLabel(label: numOfArchersLbl, level: army.archers)
        fillNumberOfArmyLabel(label: numOfRidersLbl, level: army.riders)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
