//
//  ViewController.swift
//  BucketList
//
//  Created by Maria Stezhko on 3/12/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController, AddItemTableViewControllerDelegate {
    
    var items = ["Go to the moon", "Eat a candy bar", "Swim in the Amazon", "Ride a motobike in Tokio"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListItemCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddNewMission" {
            let navigationController = segue.destination as! UINavigationController
            let addItemTableViewController = navigationController.topViewController as! AddItemTableViewController
            addItemTableViewController.delegate = self
        }
    }
    func cancelButtonPressed(by controller: AddItemTableViewController) {
        print("I'm the hidden controller, BUT I am responding to the cancel button press on the top view controller")
        dismiss(animated: true, completion: nil)
    }
    func itemSaved(by controller: AddItemTableViewController, with text: String) {
        print("Received text from Top View: \(text)")
        items.append(text)
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }

}

