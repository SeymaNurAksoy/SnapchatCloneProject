//
//  SettingsVC.swift
//  SnapchatCloneProject
//
//  Created by Şeyma Nur on 20.04.2021.
//

import UIKit
import Firebase
class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOutClicked(_ sender: Any) {
    
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toSignInVC", sender: nil)
        } catch  {
            
        }
    
    }
    
}
