//
//  TheTeamsTableViewController.swift
//  BAMF
//
//  Created by Hyrum Glen Bateman on 9/13/21.
//

import UIKit

class TheTeamsTableViewController: UITableViewController {
    
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
   
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MemberController.members.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath) as? MemberTableViewCell else { return UITableViewCell()}

        let member = MemberController.members[indexPath.row]
        
        cell.member = member
       
        
        return cell
    }
}
