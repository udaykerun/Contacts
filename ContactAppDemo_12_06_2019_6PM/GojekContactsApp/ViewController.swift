//
//  ViewController.swift
//  GojekContactsApp
//
//  Created by Nishant Sharma on 06/11/2019
//  Copyright © 2019 Nishant Sharma. All rights reserved.
//

import UIKit

class ViewController: UINavigationController {
    
    private let contactsVC: ContactsViewController = ContactsViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set nav bar to be solid
        self.navigationBar.isTranslucent = false
        
        // set initial root vc
        self.pushViewController(self.contactsVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

