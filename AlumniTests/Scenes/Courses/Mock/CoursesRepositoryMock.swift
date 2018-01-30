//
//  CoursesRepositoryMock.swift
//  AlumniTests
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation
@testable import Alumni


class CoursesSuccessRepositoryMock: CoursesRepository {
    
    
    
    func requestCourses(completion: @escaping CoursesRepositoryFetchResult) {
        let courses: [Course] = []
        
        completion(.success(courses))
    }
    
}


class CoursesFailRepositoryMock: CoursesRepository {    
    func requestCourses(completion: @escaping CoursesRepositoryFetchResult) {
        
        
        
        completion(.failure(CoursesRepositoryError.requestFailure))
    }
}
