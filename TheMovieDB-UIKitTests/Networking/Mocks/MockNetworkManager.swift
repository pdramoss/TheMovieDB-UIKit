//
//  MockNetworkManager.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MockNetworkManager: NetworkManagerProtocol {
    
    static var MovieAPIKey: String = ""
    
    var router: Router<API> = Router<API>()
    
    func handleNetworkResponse(_ response: HTTPURLResponse) -> Result<String> {
        switch response.statusCode {
        case 200...299: return .success
        case 401...500: return .failure(NetworkResponse.authenticationError.rawValue)
        case 501...599: return .failure(NetworkResponse.badRequest.rawValue)
        case 600: return .failure(NetworkResponse.outdated.rawValue)
        default: return .failure(NetworkResponse.failed.rawValue)
        }
    }
    
    func getMovie(id: Int, completion: @escaping (GetMovieCompletion)) {
        if id == 157336 {
            completion(.success(fullMovieInformation))
        } else {
            completion(.failure(NetworkResponse.checkNetwork.rawValue))
        }
    }
    
    func getPopularMovies(page: Int, completion: @escaping (GetPopularCompletion)) {
        if page == 1 {
            completion(.success(popularInformation))
        } else {
            completion(.failure(NetworkResponse.noData.rawValue))
        }
    }
    
    func getImage(path: String, completion: @escaping (GetImageCompletion)) {
        if path.isEmpty {
            completion(.failure(NetworkResponse.noData.rawValue))
        } else {
            completion(.success(UIImage()))
            completion(.failure(NetworkResponse.noData.rawValue))
        }
    }
}
