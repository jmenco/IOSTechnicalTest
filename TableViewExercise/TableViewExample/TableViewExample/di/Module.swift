//
//  Module.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/12/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import TableViewExampleData
import TableViewExampleCore

protocol Module {
    var repositoryModule: RepositoryModule { get set }
    var interactorModule: InteractorModule { get set }
    
    func inject(viewController: UIViewController)
}

class AbstractModule: Module {
    var repositoryModule: RepositoryModule
    var interactorModule: InteractorModule
    
    init(repositoryModule: RepositoryModule, interactorModule: InteractorModule) {
        self.repositoryModule = repositoryModule
        self.interactorModule = interactorModule
    }
    
    func inject(viewController: UIViewController) { }
}
