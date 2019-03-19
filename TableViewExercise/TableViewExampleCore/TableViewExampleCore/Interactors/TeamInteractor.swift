//
//  ToDoListInteractor.swift
//  TableViewExampleCore
//
//  Created by Jorge Luis Menco on 3/11/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import RxSwift

public class TeamInteractor: ObservableInteractor<[Team],Any?> {
    
    let  teamRepository: TeamRepositoryProtocol
    
    public init(_teamRepository: TeamRepositoryProtocol) {
        self.teamRepository = _teamRepository
    }
    
    public override func buildUseCase(params: Any?) -> Observable<[Team]> {
        return self.teamRepository.getListTeams()
    }
    
}
