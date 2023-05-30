//
//  MoviesQueryStorage.swift
//  MVVM-Prac
//
//  Created by matt on 2023/5/29.
//

import Foundation

protocol MoviesQueriesStorage {
    func fetchRecentsQueries(
        maxCount: Int,
        completion: @escaping (Result<[MovieQuery], Error>) -> Void
    )
    func saveRecentQuery(
        query: MovieQuery,
        completion: @escaping (Result<MovieQuery, Error>) -> Void
    )
}
