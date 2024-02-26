//
//  DummyViewController.swift
//  b
//
//  Created by Daffa Yagrariksa on 26/02/24.
//

import Foundation
import UIKit

class DummyViewController: ViewController {
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension DummyViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Item \(indexPath.row + 1)"
        
        return cell
    }
    
    
}
