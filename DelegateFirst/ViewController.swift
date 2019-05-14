//
//  ViewController.swift
//  DelegateFirst
//
//  Created by Harish Hardy on 05/05/19.
//  Copyright © 2019 Greens. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var firstTextField: UITextField!
    
    var text = UITextField()
    
    override func viewDidLoad() {
        
        text.frame = CGRect(x: 100, y: 100, width: 270, height: 100)
        text.backgroundColor = .red
        text.textAlignment = .center
        text.text = ""
        text.delegate = self
        text.textColor =  UIColor.green
        self.view.addSubview(text)
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        
        textField.resignFirstResponder()
        
        print("textFieldShouldReturn")
        
        return true
    }
    


}

