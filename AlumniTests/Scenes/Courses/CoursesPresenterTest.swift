//
//  BooksPresenterTest.swift
//  AlumniTests
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import XCTest
@testable import Alumni

class CoursesPresenterTest: XCTestCase {

    /*
     A CoursesView should load multiples courses
     A Load should have 3 state starting load, loaded, finishing load
     */
    
    var mockedView: CoursesViewMock!
    var sucessRepository: CoursesRepository!
    var failRepository: CoursesRepository!
    
    override func setUp() {
        super.setUp()
        mockedView = CoursesViewMock()
        sucessRepository = CoursesSuccessRepositoryMock()
        failRepository = CoursesFailRepositoryMock()
    }
    
    func testEvenIfItFailingMustBeCallingStartingLoadAndFinishLoadingWhenPresenterLoadWasInvoked(){
        
        let presenter = CoursesPresenter(view: mockedView, repository: failRepository)
        
        presenter.load()
        
        XCTAssertTrue(mockedView.startLoadingWasCalled)
        XCTAssertTrue(mockedView.finishLoadingWasCalled)
        
    }
    
    func testEvenIfItSucceedsMustBeCallingStartingLoadAndFinishLoadingWhenPresenterLoadWasInvoked(){
        
        let presenter = CoursesPresenter(view: mockedView, repository: sucessRepository)
        
        presenter.load()
        
        XCTAssertTrue(mockedView.startLoadingWasCalled)
        XCTAssertTrue(mockedView.finishLoadingWasCalled)
        
    }
    
    func testSuccessLoadingMustBeCalledWhePresenterLoadWasSuccessInvocation(){
        let presenter = CoursesPresenter(view: mockedView, repository: sucessRepository)
        
        presenter.load()
        
        XCTAssertTrue(mockedView.startLoadingWasCalled)
        XCTAssertTrue(mockedView.successLoadWasCalled)
        XCTAssertTrue(mockedView.finishLoadingWasCalled)
        XCTAssertFalse(mockedView.failLoadWasCalled)
    }
    
    
    func testFailLoadMustBeCalledWhePresenterLoadWasFailedInvocation(){
        let presenter = CoursesPresenter(view: mockedView, repository: failRepository)
        
        presenter.load()
        
        XCTAssertTrue(mockedView.startLoadingWasCalled)
        XCTAssertTrue(mockedView.failLoadWasCalled)
        XCTAssertTrue(mockedView.finishLoadingWasCalled)
        XCTAssertFalse(mockedView.successLoadWasCalled)
    }
    
}
