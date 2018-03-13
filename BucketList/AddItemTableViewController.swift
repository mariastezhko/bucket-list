//
//  AddItemTableViewController.swift
//  BucketList
//
//  Created by Maria Stezhko on 3/12/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    @IBOutlet weak var itemTextField: UITextField!
    weak var delegate: AddItemTableViewControllerDelegate?

    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: text)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
