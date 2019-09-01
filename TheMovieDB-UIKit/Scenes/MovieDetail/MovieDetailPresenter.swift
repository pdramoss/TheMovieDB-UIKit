//
//  MovieDetailPresenter.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import Foundation

protocol MovieDetailPresenterProtocol: class {
    
    var id: Int? { get set }
    var view: MovieDetailViewProtocol? { get set }
    var router: MovieDetailRouterProtocol! { get set }
    var interactor: MovieDetailInteractorProtocol! { get set }
    
    func viewDidLoad()
    
}

protocol MovieDetailInteractorOutputProtocol: class {
    func movieDetailDidFetch(movie: FullMovie)
    func failedGetMovieDetail(error: String)
}

class MovieDetailPresenter: MovieDetailPresenterProtocol {
    var view: MovieDetailViewProtocol?
    var router: MovieDetailRouterProtocol!
    var interactor: MovieDetailInteractorProtocol!
    
    var id: Int?
    
    func viewDidLoad() {
        guard let id = id else {
            router.showAlert(for: "ERROR 404")
            return
        }
        interactor.getMovieInformation(id: id)
    }
}

extension MovieDetailPresenter: MovieDetailInteractorOutputProtocol {
    func movieDetailDidFetch(movie: FullMovie) {
        view?.displayMovieDetail(movie)
    }
    
    func failedGetMovieDetail(error: String) {
        router.showAlert(for: error)
    }
}
