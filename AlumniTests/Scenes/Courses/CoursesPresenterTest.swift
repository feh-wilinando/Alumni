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
    
    func testShouldNavigateToBookDetailsWhenSelectedCourseHasBookAvailable(){
        let presenter = CoursesPresenter(view: mockedView, repository: sucessRepository)
        
        presenter.selected(course: courseWithABook)
        
        XCTAssertTrue(mockedView.navigateToDetailWasCalled)
        
        let route = CoursesRouter.bookDetail(withBook: defaultBook)
        
        guard let targetRoute = mockedView.targetNavigation else {
            XCTFail("No Route Available")
            return
        }
        XCTAssertEqual(route, targetRoute)
        XCTAssertEqual(defaultBook, targetRoute.getData())
    }
    
    
    func testShouldNotNavigateToBookDetailsWhenSelectedCourseBookIsNotAvailable(){
        let presenter = CoursesPresenter(view: mockedView, repository: sucessRepository)
        
        presenter.selected(course: courseWithoutABook)
        
        XCTAssertFalse(mockedView.navigateToDetailWasCalled)
        XCTAssertTrue(mockedView.noBookAvailableWasCalled)
        
        
        
    }
    
}
