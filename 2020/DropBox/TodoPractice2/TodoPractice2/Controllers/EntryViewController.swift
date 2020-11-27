//
//  EntryViewController.swift
//  TodoPractice2
//
//  Created by Veldanov, Anton on 10/17/20.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var entryTextField: UITextField!
    
    
    var update:(()->Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        entryTextField.delegate = self
        
        navigationItem.rightBarButtonItem =  UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        
        return true
    }
    
    
    @objc func saveTask(){
        guard let text = entryTextField.text, !text.isEmpty else {
            return
        }
        guard let count = UserDefaults().value(forKey: "count") as? Int else{
            return
        }
        
        let newCount = count + 1
        
        UserDefaults().set(newCount, forKey: "count")
        UserDefaults().set(text, forKey: "task_\(newCount)")

    }
    
}
