//
//  ViewController.swift
//  book
//
//  Created by JNN APPLE 4 on 19/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password:UITextField!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    
    
    @IBAction func SubmitTapped(_ sender: UIButton) {
        
        let username = Username.text
        let password = Password.text
        if username == "JnnApple" && password == "Jnn@123"{
           
            // Perform segue to Home view controller
        
        } else {
            // Optionally, show an alert for invalid credentials
           showAlert(message: "Invalid credentials.")
        }
    }
    
   
        func showAlert(message: String) {
       let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
       present(alert, animated: true, completion: nil)
   }
}
