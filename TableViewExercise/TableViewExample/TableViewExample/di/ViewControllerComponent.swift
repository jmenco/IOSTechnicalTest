//
//  ViewControllerComponent.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/12/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import TableViewExampleData

class ViewControllerComponent {
    
    private let repositoryModule: RepositoryModule
    private let interactorModule: InteractorModule
    
    var modules: [String: AbstractModule] = [String: AbstractModule]()
    
    init(){
        self.repositoryModule = RepositoryModule()
        self.interactorModule = InteractorModule(repositoryModule: self.repositoryModule)
        
        modules[NSStringFromClass(ListTeamViewController.self.classForCoder())] = ListTeamModule(
            repositoryModule: repositoryModule,
            interactorModule: interactorModule)
        
        modules[NSStringFromClass(DetailTeamViewController.self.classForCoder())] = DetailTeamModule(
            repositoryModule: repositoryModule,
            interactorModule: interactorModule)
    }
}
