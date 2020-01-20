//
//  ViewController.swift
//  Viking Name Generator
//
//  Created by John Piccione on 9/3/19.
//  Copyright © 2019 John Piccione. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    
    // MARK: - Array of Names
    // Arrays of male and female names and last names
    
    let maleNames = ["Arne", "Baldur", "Birger", "Bjorn", "Erik", "Frode", "Grom", "Halfdan", "Harald",
                     "Knud", "Kare", "Loki", "Leif", "Njal", "Odin", "Ragnar", "Roar", "Rune", "Sten",
                     "Skarde", "Sune", "Svende", "Troels", "Thor", "Toke", "Torsten", "Trygve", "Ulf",
                     "Odger", "Ivar", "Njord", "Sindri", "Tyr", "Volund", "Jarl", "Ubbe", "Magnus",
                     "Torstein", "Gunnar", "Vidar"]
    
    let maleLastNames = ["Lothbrok", "Ironside", "the Stout", "the Saint", "Stormborn", "the Red", "the Berserker",
                         "Thorsson", "Odinsson", "the Bloody", "the Cruel", "the Wolf", "the Conqueror", "the Raven",
                         "the Gimp", "Redbeard", "the Wise", "the Clumsy", "the Serpent", "the Outcast", "the Boneless",
                        "Bloodaxe", "Bluetooth", "Wartooth", "Vilulf", "Bjornsson"]
    
    
    let femaleNames = ["Astrid", "Bodil", "Frida", "Gertru", "Gro", "Estrid", "Hilda", "Gudrun", "Freya",
                       "Gunhild", "Helga", "Inga", "Liv", "Randi", "Signe", "Sigrid", "Revna", "Sif",
                       "Tora", "Tove", "Thyra", "Thurid", "Yrsa", "Ulfhild", "Lagertha", "Idunn", "Skadi",
                       "Heidrun", "Auslaug", "Yngvild"]
    
    let femaleLastNames = ["the Beautiful", "the Angry", "the Elegant", "the Widow", "the Cruel", "the Saint", "Stormborn",
                           "the Scorned", "the Red", "the Playful", "the Wise", "the Honest", "the Graceful", "the Serpent",
                            "the Outcast", "the Shield Maiden"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "viking-2084863_640")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
            }
    
    // MARK: - Interactions
    // User pushes male button
    @IBAction func UserIsMale(_ sender: UIButton, forEvent event: UIEvent) {
        let fullName = maleNames.randomElement()! + " " + maleLastNames.randomElement()!
    

        // Alert pops up displaying users new male viking name with an "ok" button to cancel the alert
        let alert = UIAlertController(title: "Your Viking name is:", message: fullName, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    // User pushes female button
    @IBAction func UserIsFemale(_ sender: UIButton, forEvent event: UIEvent) {
        let fullName2 = femaleNames.randomElement()! + " " + femaleLastNames.randomElement()!

        // Alert pops up displaying users new female viking name with an "ok" button to cancel the alert
        let alert = UIAlertController(title: "Your Viking name is:", message: fullName2, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    
        self.present(alert, animated: true)
    
    

}

} // END
