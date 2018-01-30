//
//  DataReponse.swift
//  Alumni
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation

enum DataResponse<T> {
    case success(T)
    case failure(Error)
    
    func unwrap() throws -> T {
        switch self {
        case let .success(value):
            return value
        case let .failure(error):
            throw error
        }
    }
    
}
