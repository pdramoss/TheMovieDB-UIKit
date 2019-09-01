//
//  GetMovieUseCase.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import Foundation

enum GetMovieResult {
    case success(Movie)
    case failure(String)
}

typealias GetMovieCompletion = (GetMovieResult) -> Void

