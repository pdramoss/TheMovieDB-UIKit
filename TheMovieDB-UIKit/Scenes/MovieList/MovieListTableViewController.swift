//
//  MovieListTableViewController.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import UIKit

protocol MovieListViewProtocol: class {
    var presenter: MovieListPresenterProtocol! { get set }
    var movies: [Movie] { get set }
    
    func showMovies(with movies: [Movie])
    func showMessageError(error: String)
}

class MovieListTableViewController: UITableViewController {

    var presenter: MovieListPresenterProtocol!
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "THE MOVIE DB"
        MovieListRouter.createMovieListModuler(movieListRef: self)
        presenter.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movies[indexPath.row]
        let cell: UITableViewCell = UITableViewCell()
        cell.textLabel?.text = movie.title
        return cell
    }

}

extension MovieListTableViewController: MovieListViewProtocol {
    func showMovies(with movies: [Movie]) {
        self.movies = movies
        tableView.reloadData()
    }
    
    func showMessageError(error: String) {
        print("ERROR: \(error)")
    }
}
