//
//  MoviesSearchFlowCoordinator.swift
//  MVVM-Prac
//
//  Created by matt on 2023/5/29.
//

import Foundation
import SwiftUI

protocol MoviesSearchFlowCoordinatorDependencies {
    func makeMoviesListView(actions: MoviesListViewModelAction) -> MoviesListView
    func makeMoviesDetailView(movie: Movie) -> any View
    func makeMoviesQueriesSuggestionsListView(didSelect: @escaping MoviesQueryListViewModelDidSelectAction) -> any View
}

final class MoviesSearchFlowCoordinator {
    
    
    
    
    func start() {
        // Note: here we keep strong reference with actions, this way this flow do not need to be strong referenced
    }
}
