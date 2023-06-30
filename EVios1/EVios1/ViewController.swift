//
//  ViewController.swift
//  EVios1
//
//  Created by Duc Luu on 30/06/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var avatarContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        avatarContainer.layer.cornerRadius = avatarContainer.frame.height / 2
    }


}

