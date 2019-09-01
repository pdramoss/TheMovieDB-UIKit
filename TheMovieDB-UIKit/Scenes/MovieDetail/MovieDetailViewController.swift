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
    func displayMovie(_ movie: FullMovie)
}

class MovieDetailViewController: UIViewController {

    var presenter: MovieDetailPresenterProtocol!
    var movie: FullMovie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

extension MovieDetailViewController: MovieDetailViewProtocol {
    func displayMovie(_ movie: FullMovie) {
        self.movie = movie
    }
}

extension MovieDetailViewController {
    static var storyboardID: String {
        return String(describing: self)
    }
}
