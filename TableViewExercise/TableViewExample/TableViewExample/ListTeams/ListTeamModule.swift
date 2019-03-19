//
//  ListTeamModule.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/12/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import TableViewExampleCore

class ListTeamModule: AbstractModule {
    
    override func inject(viewController: UIViewController) {
        let presenter = TeamPresenter(_teamIntecractor: interactorModule.getTeamInteractor)
        (viewController as? ListTeamViewController)?.presenter = presenter
        
    }
    
    
}
