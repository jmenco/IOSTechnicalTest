//
//  BaseViewController.swift
//  TableViewExample
//
//  Created by Jorge Luis Menco on 3/12/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController:  UIViewController, BaseView{
    public var presenter : BasePresenterProtocol?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName:nibNameOrNil, bundle:nibBundleOrNil)
        self.ownInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.ownInit()
    }
    
    private func ownInit(){
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let className = NSStringFromClass(self.classForCoder)
        
        guard let module = delegate.viewcontrollerComponent.modules[className] else {
            return
        }
        
        module.inject(viewController: self)
    }
}
