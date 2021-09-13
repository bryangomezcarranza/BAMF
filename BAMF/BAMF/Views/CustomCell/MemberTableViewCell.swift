//
//  MemberTableViewCell.swift
//  BAMF
//
//  Created by Lon Chandler Madsen on 9/13/21.
//

import UIKit

class MemberTableViewCell: UITableViewCell {
    @IBOutlet weak var memberNameLabel: UILabel!
    @IBOutlet weak var memberBio: UILabel!
    @IBOutlet weak var memberSkill: UILabel!
    
    var member: Member? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    

    func updateViews(){
        memberNameLabel.text = member?.name
        memberBio.text = member?.bio
        memberSkill.text = member?.funFact
    }

}
