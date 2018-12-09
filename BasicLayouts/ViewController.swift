//
//  ViewController.swift
//  BasicLayouts
//
//  Created by Mac on 12/9/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var txtOutput: UITextView!
    
    var items:[String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //myTextField.delegate = self
    }

    @IBAction func addItem(_ sender: Any) {
        //let name = txtInput.text!
        
        if (txtInput.text! == ""){
            return
        }
        
        items.append(txtInput.text!)
        
        //Now we are refreshing the list with all the todos
        txtOutput.text = ""
        for item in items {
            txtOutput.text.append("\(item)\n")
        }
        
        //clean the input
        txtInput.text = ""
        txtInput.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        addItem(self)
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

