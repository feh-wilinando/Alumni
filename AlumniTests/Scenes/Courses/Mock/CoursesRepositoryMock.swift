//
//  CoursesRepositoryMock.swift
//  AlumniTests
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation
@testable import Alumni

let defaultBook = Book(url: URL(string: "http://abc.com.br")!, hasDownloaded: true)

let courseWithABook = Course(code: "FJ-21", description: "Java Web", date: "20/05/2017", iconName: "fj21", book: defaultBook)
let courseWithoutABook = Course(code: "FJ-21", description: "Java Web", date: "20/05/2017", iconName: "fj21", book: nil)

class CoursesSuccessRepositoryMock: CoursesRepository {
    
    
    
    func requestCourses(completion: @escaping CoursesRepositoryFetchResult) {
        let courses: [Course] = [courseWithABook, courseWithoutABook]
        
        completion(.success(courses))
    }
    
}


class CoursesFailRepositoryMock: CoursesRepository {    
    func requestCourses(completion: @escaping CoursesRepositoryFetchResult) {
        
        
        
        completion(.failure(CoursesRepositoryError.requestFailure))
    }
}
