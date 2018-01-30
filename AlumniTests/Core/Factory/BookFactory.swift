//
//  BookFactory.swift
//  AlumniTests
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation
@testable import Alumni


class BookFactory {
    
    var url: URL {
        
        guard let url = URL(string: "http://example.com") else {
            fatalError()
        }
        
        return url
    }
    
    func newBook() -> Book {
        return Book(url: url)
    }
}
