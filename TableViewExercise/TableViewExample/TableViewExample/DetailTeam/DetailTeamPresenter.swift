//
//  DetailTeamPresenter.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/15/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import RxSwift
import TableViewExampleCore

protocol DetailTeamPresenterProtocol : BasePresenterProtocol {
    
    func getDetailTeamById(IdTeam:String) -> Void
    func bind(withView view : DetailTeamView)
    func unBind()
}

class DetailTeamPreenter: BasePresenter, DetailTeamPresenterProtocol {
    
    let detailTeamInteractor : ObservableInteractor<[DetailTeam], DetailTeamParams>
    private let disposeBag : DisposeBag = DisposeBag()
    
    init(_detailTeamInteractor : ObservableInteractor<[DetailTeam],DetailTeamParams>) {
        self.detailTeamInteractor = _detailTeamInteractor
    }
    
    func bind(withView view : DetailTeamView){
        super.bind(withView: view)
    }
    
    func getDetailTeamById(IdTeam: String) {
        
        guard let detailView = self.view as? DetailTeamView else {return}
        
        self.detailTeamInteractor.execute(
            params: DetailTeamParams(_idTeam: IdTeam),
            onSuccess: { dataDetailTeamOptional in
                guard let dataDetailTeam = dataDetailTeamOptional else {return}
                guard let detailTeam : DetailTeam = dataDetailTeam.first else {
                    return
                }
                detailView.setInfoTeam(detailTeam: detailTeam)
            
            },
            onError:{ (error) in
                debugPrint("error \(error)")
                
        }).disposed(by:disposeBag)
    }
}
