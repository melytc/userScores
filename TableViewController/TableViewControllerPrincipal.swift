//
//  TableViewControllerPrincipal.swift
//  TableViewController
//
//  Created by alumno on 08/09/16.
//  Copyright © 2016 MelissaTreviño. All rights reserved.
//

import UIKit

class TableViewControllerPrincipal: UITableViewController {

    var arrayUsers : [User]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let userOne = User(nameN: "Juan Luis", scoreN: 1500, emailN: "juan@hotmail.com")
        let userTwo = User(nameN: "Caroline", scoreN: 2400, emailN: "caroline@gmail.com")
        let userThree = User(nameN: "Axel", scoreN: 3900, emailN: "axel.srz@me.com")
        
        arrayUsers = [userOne, userTwo, userThree]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUsers.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("userCell", forIndexPath: indexPath)
        
        cell.textLabel!.text? = arrayUsers[indexPath.row].name
        cell.detailTextLabel!.text? = String(arrayUsers[indexPath.row].score)
        let imageCurrentUser = UIImage (named: "imageUser")
        cell.imageView?.image = imageCurrentUser
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewDetail = segue.destinationViewController as! ViewController
        let indexPath = tableView.indexPathForSelectedRow
        
        viewDetail.user = arrayUsers[(indexPath?.row)!]
    }

}
