//
//  ViewController.swift
//  SelfSizing-v3
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "LineCell") as! LineCell
        cell.lineLabel.text = "1"
        cell.textView.text = "asdadadasadsadafasfagagafgdsfasfhadsfhaufadsdafasfdsagsafgfagjafspgiapgisfoadsofuaosda"
        return cell
    }
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(LineCell.self, forCellReuseIdentifier: "LineCell")
        tableView.rowHeight = UITableView.automaticDimension
        // tableView.cellLayoutMarginsFollowReadableWidth = true
        setupView()
    }
    private func setupView() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: tableView.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: tableView.trailingAnchor),
            view.topAnchor.constraint(equalTo: tableView.topAnchor),
            view.bottomAnchor.constraint(equalTo: tableView.bottomAnchor),
            
        ])
    }
    
}

