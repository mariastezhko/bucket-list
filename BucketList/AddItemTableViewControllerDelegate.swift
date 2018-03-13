//
//  AddItemTableViewControllerDelegate.swift
//  BucketList
//
//  Created by Maria Stezhko on 3/13/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import Foundation

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}
