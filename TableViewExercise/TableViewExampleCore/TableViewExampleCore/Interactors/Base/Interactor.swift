//
//  Interactor.swift
//  TableViewExampleCore
//
//  Created by Jorge Luis Menco on 3/12/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import Foundation
import RxSwift

protocol InteractorProtocol {
    associatedtype P
    associatedtype R
    func execute(params: P, onSuccess: @escaping (R?) -> (), onError: @escaping (Error) -> ()) -> Disposable
}

public class ObservableInteractor<Response, Params>: InteractorProtocol {
    typealias P = Params
    typealias R = Response
    
    public init() { }
    
    public func execute(params: Params, onSuccess: @escaping (Response?) -> (), onError: @escaping (Error) -> ()) -> Disposable {
        
        return buildUseCase(params: params)
            .observeOn(MainScheduler.instance)
            .subscribeOn(ConcurrentDispatchQueueScheduler(qos: .background))
            .subscribe(onNext: onSuccess, onError: onError)
    }
    
    public func buildUseCase(params: Params) -> Observable<Response> {
        return Observable<Response>.create({ emitter in
            return Disposables.create()
        })
    }
}
