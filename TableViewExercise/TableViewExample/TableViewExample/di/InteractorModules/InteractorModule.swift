//
//  InteractorModule.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/12/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import TableViewExampleCore
import TableViewExampleData

class InteractorModule {
    
    internal let repositoryModule : RepositoryModule
    
    init(repositoryModule: RepositoryModule) {
        self.repositoryModule = repositoryModule
    }
}
