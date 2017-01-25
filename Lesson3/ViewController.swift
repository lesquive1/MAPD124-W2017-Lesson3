//
//  ViewController.swift
//  Lesson3
//
//  Created by Luis Esquivel on 2017-01-24.
//  Copyright © 2017 luis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var x: Professor!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let x = Professor(fullName: "Luis", age: 40)
        x.SaysHello()
    }
    
    @IBAction func myActionButton(_ sender: UIButton) {
        showMyActionSheet()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //showMyAlert()
        showMyActionSheet()
    }

    func showMyAlert(alertTitle: String, alertMessage: String) {
        
        let alertController = UIAlertController(title: alertTitle,
                                               message: alertMessage,
                                               preferredStyle: .alert)
        
        let cancelButton = UIAlertAction(title: "Cancel",
                                        style: .cancel,
                                        handler: nil)
        
        alertController.addAction(cancelButton)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    func yesButtonHandler(alert: UIAlertAction) {
        self.showMyAlert(alertTitle: "Positive",
                         alertMessage: "Yay! you chose well!")
    }
    
    func showMyActionSheet() {
        let actionSheetControler = UIAlertController(title: "An Action Sheet!",
                                                     message: "Here's a message",
                                                     preferredStyle: .actionSheet)
        
        let yesButton = UIAlertAction(title: "YES",
                                      style: .default,
                                      handler: yesButtonHandler)
        
        let noButton = UIAlertAction(title: "NO",
                                     style: .cancel,
                                     handler: {
                                        action in
                                        self.showMyAlert(alertTitle: "Negative", alertMessage: "Boo! you chose poorly!")
                                        })
        
        actionSheetControler.addAction(yesButton)
        actionSheetControler.addAction(noButton)
        
        present(actionSheetControler, animated: true, completion: nil)
        
    }


}

