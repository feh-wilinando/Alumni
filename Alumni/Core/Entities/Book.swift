//
//  Book.swift
//  Alumni
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation

struct Book: Equatable {
    
    let url: URL
    var hasDownloaded = false
    
    
    static func ==(lhs: Book, rhs: Book) -> Bool {
        return lhs.url == rhs.url
    }
}
