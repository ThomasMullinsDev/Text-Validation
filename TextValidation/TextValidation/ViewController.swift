//
//  ViewController.swift
//  TextValidation
//
//  Created by Thomas Mullins on 2/28/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordSuccessLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func passwordTextEditingChanged(_ sender: UITextField) {
        guard let text = sender.text else { return }
        let specialCharacters = "!@#$%^&*()-_=+[{]}\\|;:'\",<.>/?"
        
        if text.count >= 8 && text.contains(where: { specialCharacters.contains($0) }) {
            loginButton.tintColor = .blue
            passwordSuccessLabel.text = "Password Meets Requirements"
        } else {
            loginButton.tintColor = .darkGray
            passwordSuccessLabel.text = "Password Requires at least 8 Characters\nPassword Must Contain 1 Special Character"
        }
    }
    
}
