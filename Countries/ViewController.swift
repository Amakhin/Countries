//
//  ViewController.swift
//  Countries
//
//  Created by Amakhin Ruslan on 28.11.2019.
//  Copyright © 2019 Amakhin Ruslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let countiesList = ["USA", "UK", "Italy", "Russia", "Spain", "Canada", "Australia", "Finland", "Ukraine"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return countiesList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "countriesCellID", for: indexPath)
        
        cell.textLabel?.text = countiesList[indexPath.row]
        
        return cell
        
    }
    
    
}
