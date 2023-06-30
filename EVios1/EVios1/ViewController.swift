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
    var isClicked = false
    
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
        isClicked = !isClicked
        if (isClicked){
            passTextField.isSecureTextEntry = false
        } else {
            passTextField.isSecureTextEntry = true
        }
    }
    @IBAction func login(){
        if (loginTextField.text!.isEmpty || passTextField.text!.isEmpty){
            let alert = UIAlertController(title: "ERROR", message: "Une condition n'est pas respectée", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: {action in print("Touch Ok")
            }))
            present(alert, animated: true, completion: nil)
        }else{
            if ((loginTextField.text?.contains("@"))! && passTextField.text!.count >= 4){
                if (switchBtn.isOn){
                    let alert = UIAlertController(title: "Bienvenue \(String(describing: loginTextField.text))!", message: "Vous vous êtes inscris à la newsletter", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Merci !", style: .default, handler: {action in print("Touch Merci")
                    }))
                    present(alert, animated: true, completion: nil)
                }else{
                    let alert = UIAlertController(title: "Bienvenue \( String(describing: loginTextField.text))!", message: "Vous ne vous êtes pas inscris à la newsletter", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Merci !", style: .default, handler: {action in print("Touch Merci")
                    }))
                    present(alert, animated: true, completion: nil)
                }
            }else{
                let alert = UIAlertController(title: "ERROR", message: "Une condition n'est pas respectée", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: {action in print("Touch Ok")
                }))
                present(alert, animated: true, completion: nil)
            }
            
        }
        
    }
    
}

