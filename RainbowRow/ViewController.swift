//
//  ViewController.swift
//  RainbowRow
//
//  Created by Amanda Demetrio on 9/10/18.
//  Copyright © 2018 Amanda Demetrio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    class RainbowRow {
        let color: UIColor
        let height: Int = 120
        init(color: UIColor) {
            self.color = color
        }
        
        var red = UIColor.red
    }
    
    var rainbowRowArray: [RainbowRow] = [RainbowRow(color:UIColor.red),RainbowRow(color:UIColor.orange),RainbowRow(color:UIColor.yellow),RainbowRow(color:UIColor.green),RainbowRow(color:UIColor.blue),RainbowRow(color:UIColor.purple)]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 120.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // How many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rainbowRowArray.count
    }
    
    // How should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = rainbowRowArray[indexPath.row].color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
    }
    
}
