//
//  exapleTableProtocol.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/11/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import RxSwift
import TableViewExampleCore

protocol TeamPresenterProtocol : BasePresenterProtocol {
    func bind(withView view:ListTeamsView)
    func unBind()
    func getTeams()
}

class TeamPresenter : BasePresenter, TeamPresenterProtocol {

    let teamInteractor : ObservableInteractor<[Team], Any?>
    private let disposeBag : DisposeBag = DisposeBag()
    
    init(_teamIntecractor:ObservableInteractor<[Team], Any?>) {
        self.teamInteractor = _teamIntecractor
    }
    
    func bind(withView view: ListTeamsView) {
        super.bind(withView: view)
    }
    
    func getTeams() {
        self.teamInteractor.execute(
            params: nil,
            onSuccess: {[weak view] teamsOptional in
                guard let teams = teamsOptional else {
                    return
                }
                guard let listTeamView = self.view as? ListTeamsView else {return}
                listTeamView.getAllTeams(data: teams)
            },
            onError:{
                debugPrint($0.localizedDescription)
        }).disposed(by:disposeBag)
    }
}

