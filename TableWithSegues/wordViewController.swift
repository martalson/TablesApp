//
//  wordViewController.swift
//  TableWithSegues
//
//  Created by Martin Alonso on 8/11/14.
//  Copyright (c) 2014 martalson. All rights reserved.
//

import Foundation
import UIKit
class wordViewController: UIViewController{
    @IBOutlet var wordTextField: UITextField!
    @IBAction func createWordButton(sender: AnyObject) {
        words.addWord(wordTextField.text)
        self.navigationController.popViewControllerAnimated(true)
    }
}