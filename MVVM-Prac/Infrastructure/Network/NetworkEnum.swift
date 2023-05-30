//
//  NetworkEnum.swift
//  MVVM-Prac
//
//  Created by matt on 2023/5/29.
//

import Foundation

enum RequestGenerationError: Error {
    case components
}

enum DataTransferError: Error {
    case noResponse
    case parsing(Error)
    case networkFailure(NetworkError)
    case resolvedNetworkFailure(Error)
}

// MARK: NetworkService

enum NetworkError: Error {
    case error(statusCode: Int, data: Data?)
    case notConnected
    case cancelled
    case generic(Error)
    case urlGeneration
}
