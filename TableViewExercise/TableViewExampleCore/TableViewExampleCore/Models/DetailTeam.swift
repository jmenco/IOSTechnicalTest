//
//  DetailTeam.swift
//  TableViewExampleCore
//
//  Created by Jorge Luis Menco on 3/15/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation

public struct DetailTeam {
    
    public let nameTeam : String
    public let teamDescription : String
    public let fundationYear :String
    public let badge  :String
    
    public init(nameTeam:String,teamDescription:String,fundationYear:String,badge:String) {
        self.nameTeam = nameTeam
        self.teamDescription = teamDescription
        self.fundationYear = fundationYear
        self.badge = badge
    }
}
