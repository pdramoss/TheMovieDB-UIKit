//
//  Movie.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import Foundation
import CoreLocation

struct Movie: Hashable, Codable {
    
    var id: Int
    var adult: Bool
    var backdrop_path: String?
    var budget: Int
    var homepage: String
    var original_language: String
    var original_title: String
}
