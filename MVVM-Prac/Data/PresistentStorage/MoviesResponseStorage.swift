//
//  MoviesResponseStorage.swift
//  MVVM-Prac
//
//  Created by matt on 2023/5/29.
//

import Foundation

protocol MoviesResponseStorage {
    func getResponse(
        for request: MoviesRequestDTO,
        completion: @escaping (Result<MoviesResponseDTO?, Error>) -> Void
    )
    func save(response: MoviesResponseDTO, for requestDto: MoviesRequestDTO)
}
