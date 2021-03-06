//
//  myTableViewController.swift
//  TableWithSegues
//
//  Created by Martin Alonso on 8/10/14.
//  Copyright (c) 2014 martalson. All rights reserved.
//

import Foundation
import UIKit
class myTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource{
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell: UITableViewCell
        cell = self.tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = words.value()[indexPath.row]
        return cell
    }
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if(segue.identifier == "displaySegue"){
            var indexPath: NSIndexPath = self.tableView.indexPathForCell(sender as UITableViewCell)
            var dc = segue.destinationViewController as displayCellViewController
            dc.text = words.value()[indexPath.row]
        }
    }
    override func tableView(tableView:UITableView, numberOfRowsInSection: Int) ->Int{
        return words.value().count
    }
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }
}
