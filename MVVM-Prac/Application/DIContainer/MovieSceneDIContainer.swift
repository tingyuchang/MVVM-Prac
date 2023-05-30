//
//  MovieSceneDIContainer.swift
//  MVVM-Prac
//
//  Created by matt on 2023/5/29.
//

import Foundation
import SwiftUI

final class MoviesSceneDIContainer: MoviesSearchFlowCoordinatorDependencies {
    
    struct Dependencies {
        let apiDataTransferService: DataTransferService
        let imageDataTransferService: DataTransferService
    }
    
    private let dependices: Dependencies
    
    init(dependices: Dependencies) {
        self.dependices = dependices
    }
    
    // MARK: - presistent storage
//    lazy var moviesQueriesStorage: MoviesQueriesStorage = CoreDataMoviesQueriesStorage(maxStorageLimit: 10)
//    lazy var moviesResponseCache: MoviesResponseStorage = CoreDataMoviesResponseStorage()
    
    // MARK: Use Cases
    /*
    func makeSearchMoviesUseCase() -> SearchMoviesUseCase {
        DefaultSearchMoviesUseCase(
            moviesRepository: makeMoviesRepository(),
            moviesQueriesRepository: makeMoviesQueriesRepository()
        )
    }
    
    func makeFetchRecentMovieQueriesUseCase(
        requestValue: FetchRecentMovieQueriesUseCase.RequestValue,
        completion: @escaping (FetchRecentMovieQueriesUseCase.ResultValue) -> Void
    ) -> UseCase {
        FetchRecentMovieQueriesUseCase(
            requestValue: requestValue,
            completion: completion,
            moviesQueriesRepository: makeMoviesQueriesRepository()
        )
    }
    */
    // MARK: - Repositories
    /*
     func makeMoviesRepository() -> MoviesRepository {
         DefaultMoviesRepository(
             dataTransferService: dependencies.apiDataTransferService,
             cache: moviesResponseCache
         )
     }
     func makeMoviesQueriesRepository() -> MoviesQueriesRepository {
         DefaultMoviesQueriesRepository(
             moviesQueriesPersistentStorage: moviesQueriesStorage
         )
     }
     func makePosterImagesRepository() -> PosterImagesRepository {
         DefaultPosterImagesRepository(
             dataTransferService: dependencies.imageDataTransferService
         )
     }
     */
    
    
    // MARK: - Movies List
    func makeMoviesListView(actions: MoviesListViewModelAction) -> MoviesListView {
        MoviesListView()
    }
    
    
    // MARK: - Movie Details
    func makeMoviesDetailView(movie: Movie) -> any View {
        MovieDetailsView()
    }
    
    // MARK: - Movies Queries Suggestion List
    func makeMoviesQueriesSuggestionsListView(didSelect: @escaping MoviesQueryListViewModelDidSelectAction) -> any View {
        MoviesQueryListView()
    }
    
    // MARK: - Flow Coordinators
    func makeMoviesSearchFlowCoordinator() {
        
    }
    
}
