//
//  ExpensesSetUp.swift
//  SpendAndSave
//
//  Created by Jamie Henderson on 2017-05-17.
//  Copyright © 2017 Jamie Henderson. All rights reserved.
//

import UIKit

class ExpensesSetUpVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var ExpenseTableView: UITableView!
    
    let dataSourceArray = ["Rent", "Utilities", "Cell Phone", "Groceries", "Restaurants", "Entertainment", "My Discretionary", "Partner's Discretionary", "Daycare", "Pet", "Lil' Adventures", "Grand Excurisions", "Work", "Clothes", "Household", "Gifts", "Donations", "Small Joys", "Music"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Note:  Be sure to replace the argument to dequeueReusableCellWithIdentifier with the actual identifier string!
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell")!
        
        cell.textLabel?.text = dataSourceArray[indexPath.row]
        // set cell's textLabel.text property
        // set cell's detailTextLabel.text property
        return cell
    }
    
}
