//
//  DetailTeamInteractor.swift
//  TableViewExampleCore
//
//  Created by Jorge Luis Menco on 3/15/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import RxSwift

public struct DetailTeamParams {
    public let idTeam :String
    
    public init(_idTeam:String){
        self.idTeam = _idTeam
    }
}

public class DetailTeamInteractor: ObservableInteractor<[DetailTeam], DetailTeamParams> {

    let teamRepository : TeamRepositoryProtocol
    public init(teamRepository: TeamRepositoryProtocol){
        self.teamRepository = teamRepository
    }
    
    public override func buildUseCase(params: DetailTeamParams) -> Observable<[DetailTeam]> {
        return self.teamRepository.getDeailTeamById(idTeam: params.idTeam)
    }
    
}
