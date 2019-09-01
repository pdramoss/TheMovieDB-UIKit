//
//  ViewController.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testAlamofire()
    }
    
    func testAlamofire() {
        let id = 157336
        let networkManager = NetworkManager()
        networkManager.getMovie(id: id) { (result) in
            switch result {
            case .success(let movie):
                print(movie)
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }


}

