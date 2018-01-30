//
//  CoursesViewMock.swift
//  AlumniTests
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation
@testable import Alumni


class CoursesViewMock: CoursesView {    
    
    var startLoadingWasCalled = false
    var successLoadWasCalled = false
    var finishLoadingWasCalled = false
    var failLoadWasCalled = false
    
    func startLoading() {
        startLoadingWasCalled = true
    }
    
    func successLoad(courses: [Course]){
        successLoadWasCalled = true
    }
    
    func finishLoading(){
        finishLoadingWasCalled = true
    }
    
    func failLoad(){
        failLoadWasCalled = true
    }
    
}
