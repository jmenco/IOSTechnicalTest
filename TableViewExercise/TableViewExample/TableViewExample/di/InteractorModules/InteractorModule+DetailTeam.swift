//
//  InteractorModule+DetailTeam.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/15/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import RxSwift
import TableViewExampleCore

protocol GetDetailTeamInteractorModule {
    var getDetailTeamInteractor : ObservableInteractor<[DetailTeam],DetailTeamParams> {get}
}

extension InteractorModule : GetDetailTeamInteractorModule{

    var getDetailTeamInteractor : ObservableInteractor<[DetailTeam],DetailTeamParams> {
        return DetailTeamInteractor(teamRepository: repositoryModule.teamRepository)
    }
    
}
