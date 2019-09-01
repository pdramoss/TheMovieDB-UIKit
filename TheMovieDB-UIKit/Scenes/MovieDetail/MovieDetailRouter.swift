//
//  MovieDetailRouter.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import UIKit

protocol MovieDetailRouterProtocol: class {
    var viewController: UIViewController? { get set }
}

class MovieDetailRouter: MovieDetailRouterProtocol {
    var viewController: UIViewController?
    
    class func createMovieDetailModuler(movieDetailRef: MovieDetailViewController, id: Int) {
        let presenter: MovieDetailPresenterProtocol & MovieDetailInteractorOutputProtocol = MovieDetailPresenter()
        presenter.id = id
        
        let router = MovieDetailRouter()
        router.viewController = movieDetailRef
        
        let interactor = MovieDetailInteractor()
        interactor.output = presenter
        
        presenter.view = movieDetailRef
        presenter.router = router
        presenter.interactor = interactor
        
        movieDetailRef.presenter = presenter
    }
}
