//
//  InteractorModule+ListTeams.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/12/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import TableViewExampleCore

protocol ListTeamInteractorModule {
    var getTeamInteractor : ObservableInteractor<[Team], Any?>{get}
    
}

extension InteractorModule : ListTeamInteractorModule{
    var getTeamInteractor : ObservableInteractor<[Team], Any?>{
        return TeamInteractor(_teamRepository: repositoryModule.teamRepository)
    }
}

