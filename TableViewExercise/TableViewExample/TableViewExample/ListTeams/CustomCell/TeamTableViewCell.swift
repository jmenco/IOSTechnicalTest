//
//  TaskTableViewCell.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/11/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import UIKit
import TableViewExampleCore

class TeamTableViewCell: UITableViewCell {

    @IBOutlet weak var lbNameTeam: UILabel!
    @IBOutlet weak var lbStadiumTeam: UILabel!
    @IBOutlet weak var ImageTeam: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTeam(team:Team)->Void{
        lbNameTeam.text = team.name
        lbStadiumTeam.text = team.name
        ImageTeam.image =  GetImageFromUrlHelper.getImageFromULR(urlImg: team.badge)
    }

}
