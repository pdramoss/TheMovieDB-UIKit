//
//  MovieItemTableViewCell.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class MovieItemTableViewCell: UITableViewCell {

    @IBOutlet private weak var posterImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var averageLabel: UILabel!
    
    static var cellReuseIdentifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: cellReuseIdentifier, bundle: nil)
    }
    
    func setupData(movie: PreviewMovie) {
        customPoster(movie.poster_path)
        customText(movie)
    }
    
    func customPoster(_ posterPath: String? ) {
        var url = "https://httpbin.org/image/png"
        
        if let moviePoster = posterPath {
            url = "https://image.tmdb.org/t/p/w500\(moviePoster)"
        }
        
        DispatchQueue.main.async {
            Alamofire.request(url).responseImage { (response) in
                if let image = response.result.value {
                    self.posterImage.image = image
                }
            }
        }
    }
    
    func customText(_ movie: PreviewMovie) {
        self.titleLabel.text = movie.title
        self.averageLabel.text = "\(movie.vote_average) / 10.0"
    }
    
}
