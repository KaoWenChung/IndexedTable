//
//  IndexedTableViewController.swift
//  IndexedTable
//
//  Created by wyn on 2020/4/28.
//  Copyright © 2020 Wyn. All rights reserved.
//

import UIKit

class IndexedTableViewController: UITableViewController {
    
    
    let names = ["Aaron", "Adam", "Adolph", "Bert", "Carey", "Colin", "Eden", "Edmund", "Elmo", "Gary", "Giles", "Harvie", "Hiram", "Jeff", "Jeremy", "Jo", "Kelly", "Nick", "Neil", "Noah", "Perry", "Philip", "Sampson", "Scott", "Sidney", "Simon", "Tim", "Todd", "Tracy", "Troy", "Vincent", "Walker", "Wayne", "Wythe", "Yasir", "York", "Zavier"]
    var namesDict = [String:[String]]()
    var nameSectionTitles = [String]()
    let nameIndexTitles = ["A", "B", "C","D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections
        return nameSectionTitles.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // Return the section title
        return nameSectionTitles[section]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section
        let firstLetter = nameSectionTitles[section]
        guard let nameValues = namesDict[firstLetter] else {
            return 0
        }
        return nameValues.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell
        let firstLetter = nameSectionTitles
    }
    
    
}
