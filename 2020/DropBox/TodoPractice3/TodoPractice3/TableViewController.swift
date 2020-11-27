//
//  TableViewController.swift
//  TodoPractice3
//
//  Created by Veldanov, Anton on 10/17/20.
//

import UIKit

class TableViewController: UITableViewController {

//    var arr = ["A","B","C"]
    var arr = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()

        arr = [
        Item(name: "D"),
            Item(name: "E"),
            Item(name: "W")
        
        ]
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        print(indexPath.row)
        print(arr[indexPath.row])
        cell.textLabel?.text = arr[indexPath.row].name

        return cell
    }
    
    
    
    
    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        
        let vc  = storyboard?.instantiateViewController(withIdentifier: "entry") as! EntryViewController
        vc.title = "ENTRY!"
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
