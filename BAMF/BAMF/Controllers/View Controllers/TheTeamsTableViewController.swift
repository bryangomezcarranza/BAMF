//
//  TheTeamsTableViewController.swift
//  BAMF
//
//  Created by Hyrum Glen Bateman on 9/13/21.
//

import UIKit

class TheTeamsTableViewController: UITableViewController {
    
    //MARK: - Outlets

    @IBOutlet weak var memberName: UILabel!
    @IBOutlet weak var memberBio: UILabel!
    @IBOutlet weak var membersSkillz: UILabel!
    
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Properties

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
}
