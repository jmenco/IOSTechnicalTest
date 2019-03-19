//
//  BasePresenter.swift
//  TableViewExample
//
//  Created by Jorge luis Menco Jaraba on 3/17/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation

protocol BasePresenterProtocol {
    func bind(withView view:BaseView)
    func unBind()
}

class BasePresenter: NSObject, BasePresenterProtocol {
    
    var view : BaseView?
    
    func bind(withView view: BaseView) {
        self.view = view
    }
    
    func unBind() {
        self.view = nil
    }
    
}
