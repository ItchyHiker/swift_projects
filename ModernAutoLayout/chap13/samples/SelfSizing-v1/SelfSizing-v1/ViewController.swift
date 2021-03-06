//
//  ViewController.swift
//  SelfSizing-v1
//
//  Created by Yuhua Cheng on 12/9/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        if let cell = cell as? LineCell {
            cell.lineLabel.text = NumberFormatter.localizedString(from:
                NSNumber(value: indexPath.row + 1), number: .decimal)
        }
        return cell!
    }
    
    // private let tableView =
    override func viewDidLoad() {
        super.viewDidLoad()
        // self.tableView.rowHeight = UITableView.automaticDimension
        // Do any additional setup after loading the view.
    }


}

