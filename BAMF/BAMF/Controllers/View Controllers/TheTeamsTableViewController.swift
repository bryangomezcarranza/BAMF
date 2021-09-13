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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    //MARK: - Properties
    
    var member: Member
    
    //MARK: - Methods
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MemberController.members.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath)

        let members = MemberController.members[indexPath.row]
        
        memberName.text = member.name
        memberBio.text = member.bio
        membersSkillz.text = member.funFact
        
        return cell
    }
}
