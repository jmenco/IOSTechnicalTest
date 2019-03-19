//
//  DetailTeamContract.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/15/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import TableViewExampleCore

protocol DetailTeamView : BaseView {
    
    func setInfoTeam(detailTeam : DetailTeam)-> Void
}
