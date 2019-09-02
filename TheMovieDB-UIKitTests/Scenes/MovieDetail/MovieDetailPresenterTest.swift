//
//  MovieDetailPresenterTest.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MovieDetailPresenterTest: XCTestCase {

    var sut: MovieDetailPresenter?
    var mockView: MockMovieDetailView?
    var mockInteractor: MockMovieDetailInteractor?
    var mockRouter: MockMovieDetailRouter?
    
    override func setUp() {
        sut = MovieDetailPresenter()
        mockView = MockMovieDetailView()
        mockInteractor = MockMovieDetailInteractor()
        mockRouter = MockMovieDetailRouter()
        mockInteractor?.output = sut
        sut?.view = mockView
        sut?.interactor = mockInteractor
        sut?.router = mockRouter
        super.setUp()
    }
    
    override func tearDown() {
        sut = nil
        mockView = nil
        mockInteractor = nil
        mockRouter = nil
        super.tearDown()
    }
    
    func testExample() {
        sut?.id = nil
        sut?.viewDidLoad()
        
        XCTAssertTrue(mockRouter!.showAlertCalled)
    }
    
    func testExample1() {
        sut?.id = 157336
        sut?.viewDidLoad()
        XCTAssertTrue(mockInteractor!.getMovieInformationCalled)
    }
    
    func testExample2() {
        sut?.id = 157336
        sut?.movieDetailDidFetch(movie: fullMovieInformation)
        
        XCTAssertTrue(mockView!.displayMovieDetailCalled)
    }
    
    func testExample3() {
        sut?.failedGetMovieDetail(error: "")
        XCTAssertTrue(mockRouter!.showAlertCalled)
    }
    
    func testExample4() {
        sut?.movieDetailImageDidFetch(image: UIImage())
        XCTAssertTrue(mockView!.displayImageCalled)
    }
    
    func testExample5() {
        sut?.failedGetMovieDetailImage(error: "")
        XCTAssertTrue(mockRouter!.showAlertCalled)
    }

}
