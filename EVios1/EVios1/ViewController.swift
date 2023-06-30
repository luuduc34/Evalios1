//
//  ViewController.swift
//  EVios1
//
//  Created by Duc Luu on 30/06/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var avatarContainer: UIView!
    @IBOutlet var hidePass: UIView!
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    @IBOutlet var loginBtn: UIButton!
    @IBOutlet var switchBtn: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Frame avatar arrondi
        avatarContainer.layer.cornerRadius = avatarContainer.frame.height / 2
        // Masquer le clavier sur un tap
        let tapOnView = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tapOnView)
        
        hidePass.isUserInteractionEnabled = true
        let clickPass = UITapGestureRecognizer(target: self, action: #selector(passButton))
        hidePass.addGestureRecognizer(clickPass)
        
        loginTextField.keyboardType = .emailAddress
        passTextField.keyboardType = .default
        passTextField.isSecureTextEntry = true
    }
    @objc func passButton(){
        passTextField.isSecureTextEntry = false
    }
    @IBAction func login(){
        
    }
}

