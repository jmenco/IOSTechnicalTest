//
//  DetailTeamModule.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/15/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import TableViewExampleCore

class DetailTeamModule: AbstractModule {
    
    override func inject(viewController: UIViewController) {
        
        let presenter = DetailTeamPreenter(_detailTeamInteractor: interactorModule.getDetailTeamInteractor)
        (viewController as? DetailTeamViewController)?.presenter = presenter
        
    }
}
