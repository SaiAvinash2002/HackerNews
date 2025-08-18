//
//  LoginViewController.swift
//  HackerNews
//
//  Created by Sai Avinash Vagicherla on 8/15/25.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailID: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func validateEmail(_ email:String?)-> Bool{
        if let email=email ,(!email.isEmpty && email.contains("@gmail.com")) {
                return true
        }
        return false
    }

    func validatePassword(_ password: String?) -> Bool{
        if let password = password ,( password.count > 8 ){
            return true
        }
        return false
    }
    
    @IBAction func loginAction(_ sender: Any) {
        if ( validateEmail(emailID.text) && validatePassword(password.text) ) {
            print("your email id and password are correct")
        }
        
        else{
            print("Please Try Again! with correct email ID and password")
        }
    }
}
