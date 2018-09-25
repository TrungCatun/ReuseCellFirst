//
//  TableViewController.swift
//  ReuseCellFirst
//
//  Created by Trung on 9/7/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

class SubtitleCell: UITableViewCell{
}

class TableViewController: UITableViewController {
    var arrayData = Array(1...100)

    var numberOfCell: Int = 0 {
        didSet {
        title = "cell: \(numberOfCell)"
            }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            cell = SubtitleCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
            numberOfCell += 1
         
        }
        cell?.textLabel?.text = String(arrayData[indexPath.row])
       
        if ![1].contains(arrayData[indexPath.row]) {
            cell?.detailTextLabel?.text = String(arrayData[indexPath.row])

        }
        else {
            cell?.detailTextLabel?.text = String(arrayData[indexPath.row])
            cell?.backgroundColor = UIColor.green
        }
        
        return cell!
    }
 

    
}
