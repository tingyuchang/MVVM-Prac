//
//  AppDIContainer.swift
//  MVVM-Prac
//
//  Created by matt on 2023/5/29.
//

import Foundation

final class AppDIContainer {
    lazy var appConfuguration = AppConfiguration ()
    // MARK: NetWork
    lazy var apiDataTransferService: DataTransferService = {
        let config = ApiDataNetworkConfig(baseURL: URL(string: appConfuguration.apiBaseURL)!,
                                          queryParameters: [
                                            "api_key": appConfuguration.apiKey,
                                            "language": NSLocale.preferredLanguages.first ?? "en",
                                          ])
        
        let apiDataNetwork = DefaultNetWorkService(config: config)
        
        return DefaultDataTransferService(with: apiDataNetwork)
    }()
    
    lazy var imageDataTransferService: DataTransferService = {
        let config = ApiDataNetworkConfig(baseURL: URL(string: appConfuguration.imageBaseURL)!)
        let imageDataNetwork = DefaultNetWorkService(config: config)
        return DefaultDataTransferService(with: imageDataNetwork)
    }()
    
    func makeMoviewSceneDIContainer() -> MoviesSceneDIContainer {
        let dependencies = MoviesSceneDIContainer.Dependencies(
            apiDataTransferService: self.apiDataTransferService,
            imageDataTransferService: self.imageDataTransferService)
        
        return MoviesSceneDIContainer(dependices: dependencies)
    }
    
    
    // MARK: DIContainer & Scenes
}
