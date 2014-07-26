//
//  FirstViewController.swift
//  Liron
//
//  Created by Alexandre Marcondes on 7/26/14.
//  Copyright (c) 2014 Alexandre Marcondes. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
                            
    @IBOutlet weak var tableView: UITableView!
    
    var items: [[String]] = [
        ["❤", "http://baconmockup.com/200/300", "one, two"],
        ["We", "http://baconmockup.com/200/300", "one"],
        ["❤", "http://baconmockup.com/200/300", "two"],
        ["Swift", "http://baconmockup.com/200/300", "three, two"],
        ["❤", "http://baconmockup.com/200/300", " one, two, three"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         tableView.registerClass(MyCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 66
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {

        var myCell:MyCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as MyCell
        var item = items[indexPath.row]

        myCell.loadItem(name: item[0], imageUrl: item[1], tags: item[2])
        
        return myCell
    }
}

