//
//  MoviesRequestDTO+Mapping.swift
//  MVVM-Prac
//
//  Created by matt on 2023/5/29.
//

import Foundation

struct MoviesRequestDTO: Encodable {
    let query: String
    let page: Int
}
