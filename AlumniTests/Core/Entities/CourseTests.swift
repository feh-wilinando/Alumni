//
//  AlumniTests.swift
//  AlumniTests
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import XCTest
@testable import Alumni

class CourseTests: XCTestCase {
    
    var bookFactory: BookFactory!
    
    override func setUp() {
        super.setUp()
        
        bookFactory = BookFactory()
    }    
    
    /*
        * A course should have a code
        * A course should hava a title
        * A course should have a book
     */
    
    func testCourseShouldHaveACode() {
        let fj11 = Course(code: "FJ-11", title: "Orientação a Objeto", book: nil)
        
        XCTAssertEqual("Orientação a Objeto", fj11.title)
        XCTAssertEqual("FJ-11", fj11.code)
        XCTAssertNil(fj11.book)
    }
   
    
    func testCourseShouldHaveABook(){
        let book = bookFactory.newBook()
        let fj11 = Course(code: "FJ-11", title: "Orientacão a Objeto", book: book)
        
        XCTAssertNotNil(fj11.book)
    }
    
    
}
