//
//  MovieDetailViewController.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import UIKit

protocol MovieDetailViewProtocol: class {
    var presenter: MovieDetailPresenterProtocol! { get set }
    func displayMovieDetail(_ movie: FullMovie)
}

class MovieDetailViewController: UIViewController {

    var presenter: MovieDetailPresenterProtocol!
    var movie: FullMovie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .primary
        presenter.viewDidLoad()
    }
}

extension MovieDetailViewController: MovieDetailViewProtocol {
    func displayMovieDetail(_ movie: FullMovie) {
        self.movie = movie
        title = movie.title
    }
}

extension MovieDetailViewController {
    static var storyboardID: String {
        return String(describing: self)
    }
}
