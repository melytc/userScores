//
//  ViewController.swift
//  TableViewController
//
//  Created by alumno on 08/09/16.
//  Copyright © 2016 MelissaTreviño. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbEmail: UILabel!
    
    var user : User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbName.text = user.name
        lbScore.text = String(user.score)
        lbEmail.text = user.email
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table View's Data Source methods
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("userCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = user.name
        cell.detailTextLabel?.text = String(user.score)
        
        let image = UIImage(named: "imageUser")
        cell.imageView?.image = image
        
        return cell
    }
}


