//
//  Task.swift
//  TableViewExampleCore
//
//  Created by Jorge Luis Menco on 3/11/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation

public struct Team {
    
    public let id : String
    public let name : String
    public let badge : String
    public let alternateName : String
    public let stadium : String
    
    public init(id:String,name:String,badge:String,alternateName:String, stadium:String) {
        self.id = id
        self.name = name
        self.badge = badge
        self.stadium = stadium
        self.alternateName = alternateName
    }
    
}
