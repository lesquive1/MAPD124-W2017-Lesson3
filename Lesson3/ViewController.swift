//
//  ViewController.swift
//  Lesson3
//
//  Created by Luis Esquivel on 2017-01-24.
//  Copyright © 2017 luis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showMyAlert()
    }

    func showMyAlert(){
        
        let alertController = UIAlertController(title: "My Alert!",
                                               message: "Hello World!",
                                               preferredStyle: .alert)
        
        let cancelButton = UIAlertAction(title: "Cancel",
                                        style: .cancel,
                                        handler: nil)
        
        alertController.addAction(cancelButton)
        
        present(alertController, animated: true, completion: nil)
        
    }


}

