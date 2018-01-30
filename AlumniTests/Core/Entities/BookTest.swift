//
//  BookTest.swift
//  AlumniTests
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import XCTest
@testable import Alumni

class BookTest: XCTestCase {

    
    func testBookShouldHaveURLFile(){
        
        let url = URL(string: "http://example.com")!
        
        let book = Book(url: url)
        
        XCTAssertEqual(url, book.url)
    }
    
}
