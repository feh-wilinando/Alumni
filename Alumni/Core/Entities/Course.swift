//
//  Course.swift
//  Alumni
//
//  Created by Nando on 30/01/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import Foundation

struct Course {
    let code: String
    let description: String
    let date: String
    let iconName: String
    
    var bookState: String {
        
        guard let book = book  else {
            return "Apostila Indisponível"
        }
        
        guard book.hasDownloaded else {
            return "Baixar Apostila"
        }
        
        return "Ler Apostila"
    }
    
    
    var book: Book? = nil
}
