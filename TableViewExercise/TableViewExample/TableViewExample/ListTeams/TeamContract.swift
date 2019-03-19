//
//  TeamContract.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/12/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import TableViewExampleCore

protocol ListTeamsView : BaseView{
    
    func getAllTeams(data:[Team]) -> Void
    func goToDetailInfoTeam(idTeam:String) -> Void
    
}
