//
//  CoursesRouter.swift
//  Alumni
//
//  Created by Nando on 02/02/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation

enum CoursesRouter: Router {
    case bookDetail(withBook: Book)
    
    
    var info: RouteInfo {
        switch self {
        case let .bookDetail(book):
            return ("BookDetail", book)
        }
    }
    
    func getData() -> Book {
        switch self {
        case let .bookDetail(book):
            return book
        }
    }
    
}


extension CoursesRouter: Equatable {
    static func ==(lhs: CoursesRouter, rhs: CoursesRouter) -> Bool {
        switch (lhs, rhs) {
        case let ( .bookDetail(a), .bookDetail(b) ):
            return a == b
        }
    }
}
