//
//  DetailTeamViewController.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/15/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import UIKit
import TableViewExampleCore
class DetailTeamViewController: BaseViewController {
    
    var idTeam : String = ""

    @IBOutlet weak var lbNameTeam: UILabel!
    @IBOutlet weak var lbDescriptionTeam: UILabel!
    @IBOutlet weak var lbFundationYear: UILabel!
    @IBOutlet weak var imgBadgeTeam: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        (presenter as? DetailTeamPresenterProtocol)?.bind(withView: self)
        guard let detailTeamPresenter = presenter as? DetailTeamPresenterProtocol else {
            return
        }
        detailTeamPresenter.getDetailTeamById(IdTeam: idTeam)
    }
}

extension DetailTeamViewController : DetailTeamView{
    
    func setInfoTeam(detailTeam: DetailTeam) {
        lbNameTeam.text = detailTeam.nameTeam
        lbFundationYear.text = detailTeam.fundationYear
        lbDescriptionTeam.text = detailTeam.teamDescription
        imgBadgeTeam.image = GetImageFromUrlHelper.getImageFromULR(urlImg: detailTeam.badge)
    }
}
