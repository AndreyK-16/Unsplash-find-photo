//
//  SearchResults.swift
//  Unsplash for RedMadRobot
//
//  Created by Андрей К on 27.12.2019.
//  Copyright © 2019 Андрей Кальдяев. All rights reserved.
//

import Foundation

// создание модели данных

struct SearchResults: Decodable {
    let total: Int
    let results: [UnsplashPhoto]
}


struct UnsplashPhoto: Decodable {
    let width: Int
    let height: Int
    let urls: [URLKind.RawValue: String]
    
    enum URLKind: String {
        case raw
        case full
        case regular
        case small
        case thumb
    }
}
