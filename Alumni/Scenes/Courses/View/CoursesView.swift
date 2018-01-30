//
//  CoursesView.swift
//  Alumni
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation

protocol CoursesView: class {
    func startLoading()
    func successLoad(courses: [Course])
    func failLoad()
    func finishLoading()
}
