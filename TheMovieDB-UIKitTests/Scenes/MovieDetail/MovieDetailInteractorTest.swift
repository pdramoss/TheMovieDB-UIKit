//
//  MovieDetailInteractorTest.swift
//  TheMovieDB-UIKitTests
//
//  Created by Pedro Ramos on 1/09/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import XCTest
@testable import TheMovieDB_UIKit

class MovieDetailInteractorTest: XCTestCase {

    var sut: MovieDetailInteractor?
    var mockOutput: MockMovieDetailInteractorOutput?
    
    override func setUp() {
        sut = MovieDetailInteractor()
        mockOutput = MockMovieDetailInteractorOutput()
        sut?.networkManager = MockNetworkManager()
        sut?.output = mockOutput
        super.setUp()
    }

    override func tearDown() {
        sut = nil
        mockOutput = nil
    }

    func testExample() {
        sut?.getMovieImage(path: "example")
        XCTAssertTrue(mockOutput!.movieDetailImageDidFetchCalled)
    }

    func testExample1() {
        sut?.getMovieImage(path: String())
        XCTAssertTrue(mockOutput!.failedGetMovieDetailImageCalled)
    }
    
    func testExample2() {
        sut?.getMovieInformation(id: 157336)
        XCTAssertTrue(mockOutput!.movieDetailDidFetchCalled)
        XCTAssertEqual("Interstellar", mockOutput?.movie?.title)
    }
    
    func testExample3() {
        sut?.getMovieInformation(id: 0)
        XCTAssertTrue(mockOutput!.failedGetMovieDetailCalled)
    }

}
