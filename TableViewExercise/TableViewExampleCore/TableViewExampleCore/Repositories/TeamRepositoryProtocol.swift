//
//  ToDoListRepository.swift
//  TableViewExampleCore
//
//  Created by Jorge Luis Menco on 3/11/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import RxSwift

public protocol TeamRepositoryProtocol {
    
    func getListTeams() -> Observable<[Team]>
    func getDeailTeamById(idTeam:String) -> Observable<[DetailTeam]>
}


