//
//  MyTableViewController.swift
//  ProtocolApp
//
//  Created by Bronson Dupaix on 2/22/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit


class MyTableViewController: UIViewController {
    
    var tableView = UITableView() 
    
    var mims: Secretary = Secretary()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = mims
    }
    




}
