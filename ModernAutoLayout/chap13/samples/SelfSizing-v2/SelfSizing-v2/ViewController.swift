//
//  ViewController.swift
//  SelfSizing-v2
//
//  Created by Yuhua Cheng on 12/9/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        return cell!
    }
    
    // private let tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "LineCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cellID")
        tableView.rowHeight = UITableView.automaticDimension
        // Do any additional setup after loading the view.
    }


}

