//
//  displayCellViewController.swift
//  TableWithSegues
//
//  Created by Martin Alonso on 8/10/14.
//  Copyright (c) 2014 martalson. All rights reserved.
//

import Foundation
import UIKit
class displayCellViewController: UIViewController {
    
    @IBOutlet var wordLabel: UILabel!
    var text: String = ""
    override func viewDidLoad() {
        self.wordLabel.text = text
    }
    
}
