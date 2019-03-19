//
//  CustomErrors.swift
//  TableViewExampleCore
//
//  Created by Jorge Luis Menco on 3/12/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation

public enum CustomError : Error{
    public enum ApiRequest : Error{
        case unauthorized
        case malformedURL
        case missigToken
        case badRequest
    }
    
}
