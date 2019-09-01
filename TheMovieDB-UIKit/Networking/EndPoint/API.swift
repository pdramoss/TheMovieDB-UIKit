//
//  API.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import Foundation
import Alamofire

public enum API {
    case getMovie(id: Int)
    case getPopularMovies(page: Int)
}

extension API: EndPointType {
    
    private var environmentBaseURL: String {
        return "https://api.themoviedb.org/3/movie/"
    }
    
    var baseURL: URL {
        guard let url = URL(string: environmentBaseURL) else { fatalError("baseURL could not be configured.")}
        return url
    }
    
    var path: String {
        switch self {
        case .getMovie(let id):
            return "\(id)"
        case .getPopularMovies:
            return "popular"
        }
    }
    
    var httpMethod: HTTPMethod {
        switch self {
        case .getMovie, .getPopularMovies:
            return .get
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .getMovie:
            return ["api_key": NetworkManager.MovieAPIKey,
                    "language": "es-CO",
                    "region": "CO"]
        case .getPopularMovies(let page):
            return ["api_key": NetworkManager.MovieAPIKey,
                    "language": "es-CO",
                    "region": "CO",
                    "page": page]
        }
    }
    
    var headers: HTTPHeaders? {
        switch self {
        case .getMovie, .getPopularMovies:
            return ["Accept": "application/json"]
        }
    }
    
}
