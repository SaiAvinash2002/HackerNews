//
//  CreateAccountViewController.swift
//  HackerNews
//
//  Created by Sai Avinash Vagicherla on 8/15/25.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func validateFirstName(_ fName: String?) -> Bool {
        guard let fN = fName else {
            return false
        }
        return fN.count > 0
    }
    
    func validateLastName(_ lName: String? ) -> Bool {
        guard let lName = lName else {
            return false
        }
        return lName.count > 0
    }
    
    func validateGmail(_ email: String? ) -> Bool {
        
// Check If the email is valid using Regular Expressions.
        if let email=email  {
            let regex = "^[a-zA-Z0-9._%+-]+@gmail\\.com$"
            let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
            return predicate.evaluate(with: email)
        }
        return false
    }
    
    func validateAndConfirmPassword(_ password: String? , _ confirmPassword: String? ) -> Bool {
//        Check if the password has atleast one capital, one small, one digit.
        if let password = password ,let confirmPassword = confirmPassword, password.count > 8 {
           let regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,}$"
           let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
           return predicate.evaluate(with: password) && (confirmPassword == password)
        }
        return false
    }
    
    @IBAction func signUp(_ sender: Any) {
        if (validateFirstName(firstName.text) && validateLastName(lastName.text) && firstName.text != lastName.text && validateGmail(email.text)) && validateAndConfirmPassword(password.text,confirmPassword.text) {
            print("Hurray! Your account is created successfully")
        }
        
        else{
            print("Please give valid details")
        }
        
    }
}
