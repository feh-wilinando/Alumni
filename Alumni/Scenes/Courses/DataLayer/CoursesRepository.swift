//
//  CoursesRepository.swift
//  Alumni
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation

enum CoursesRepositoryError: Error {
    case requestFailure
}

typealias CoursesRepositoryFetchResult = (DataResponse<[Course]>) -> Void

protocol CoursesRepository: class {
    func requestCourses(completion: @escaping CoursesRepositoryFetchResult)
}
