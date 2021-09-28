//
//  ViewController.swift
//  Teki
//
//  Created by Thibault Sanclemente on 17/09/2021.
//

import UIKit

class ViewController: UIViewController {
    var celebrities = ["le Steve Jobs", "le Zinedine Zidane", "la Madonna", "le Karl Lagarfeld", "la Scarlett Johansson"]
    var activities = ["du dancefloor", "du barbeuc", "de la surprise ratée", "de la lourdeur", "de la raclette party"]
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        // On sélectionne un élément aléatoire parmi les célébrités
        let randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
        let celebrity = celebrities[randomIndex1]
        
        // On sélectionne un élément aléatoire parmi les activités
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        let activity = activities[randomIndex2]
        
        // On construit la citation et on l'affecte au texte du label
        let quote = "Tu es " + celebrity + " " + activity + " !"
        quoteLabel.text = quote
    }
}
