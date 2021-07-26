//
//  ViewController.swift
//  AutoLayout
//
//  Created by guna.vendina on 26/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var styleOutletsCollection: [UIButton]!
    @IBOutlet weak var buttonAOutlet: UIButton!
    @IBOutlet weak var buttonCOutlet: UIButton!
    @IBOutlet weak var buttonDOutlet: UIButton!
    @IBOutlet weak var buttonEOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleOutletsCollection.forEach { button in
            button.layer.cornerRadius = 11
            button.layer.borderColor = UIColor.brown.cgColor
            button.layer.borderWidth = 2
            
        }
    }

    @IBAction func refreshItemTapped(_ sender: Any) {
        navigationItem.title = "Auto Layout"
        self.buttonCOutlet.isHidden = false
        self.buttonDOutlet.isHidden = false
        self.buttonEOutlet.isHidden = false
        self.buttonAOutlet.setImage(UIImage(systemName: "no.image"), for: .normal)
        
        
    }
    
    @IBAction func buttonBTapped(_ sender: Any) {
        navigationItem.title = "Button B"
        self.buttonCOutlet.isHidden = true
        self.buttonDOutlet.isHidden = true
        self.buttonEOutlet.isHidden = true
        self.buttonAOutlet.setImage(UIImage(systemName: "trash.fill"), for: .normal)
    }

    @IBAction func buttonATapped(_ sender: Any) {
        self.buttonCOutlet.backgroundColor = UIColor.white
        self.buttonDOutlet.backgroundColor = UIColor.white
        self.buttonEOutlet.backgroundColor = UIColor.white
    }
}

