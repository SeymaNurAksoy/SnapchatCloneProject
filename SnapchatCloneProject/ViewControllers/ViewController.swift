//
//  ViewController.swift
//  SnapchatCloneProject
//
//  Created by Şeyma Nur on 19.04.2021.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        if username.text != "" && password.text != "" && email.text != ""{
            
            Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (auth, error) in
                if error != nil{
                    self.makeAlert(title: "ERROR", message: error?.localizedDescription ?? "ERROR")
                }else{
                    let fireStore = Firestore.firestore()
                    let userDictionary = ["email" : self.email.text!, "username" :self.username.text!] as [String :Any]
                    fireStore.collection("UserInfo").addDocument(data: userDictionary) { (error) in
                        if error != nil{
                            
                        }
                    }
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
            
        }else{
            self.makeAlert(title: "ERROR", message: "USERNAME/PASSWORD/EMAİL ?")
        }
    }

    
    func makeAlert(title:String ,message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    @IBAction func signInClicked(_ sender: Any) {
       
        if username.text != "" && password.text != "" && email.text != ""{
            Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (result, error) in
                if error != nil{
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "error")
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
                
            }
            
            
            
        }else{
            self.makeAlert(title: "ERROR", message: "USERNAME/PASSWORD/EMAİL ?")
        }
}

}
