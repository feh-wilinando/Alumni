//
//  CoursesPresenter.swift
//  Alumni
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation

class CoursesPresenter {
    
    unowned let view: CoursesView
    unowned let repository: CoursesRepository
    
    init(view: CoursesView, repository: CoursesRepository) {
        self.view = view
        self.repository = repository
    }
    
    func load() {
        view.startLoading()
        
        repository.requestCourses { [weak self] (response) in
            
            defer {
                self?.view.finishLoading()
            }            
            
            guard let result = try? response.unwrap() else {
                self?.view.failLoad()
                return
            }
            
            self?.view.successLoad(courses: result)
        }
        
        
    }
}
