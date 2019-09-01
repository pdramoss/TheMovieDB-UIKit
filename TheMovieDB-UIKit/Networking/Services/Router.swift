//
//  Router.swift
//  TheMovieDB-UIKit
//
//  Created by Pedro Ramos on 31/08/19.
//  Copyright © 2019 Pedro Ramos. All rights reserved.
//

import Foundation
import Alamofire

public typealias NetworkRouterCompletion = (_ data: Data?,_ response: HTTPURLResponse?,_ error: Error?) -> Void

protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
}

class Router<EndPoint: EndPointType>: NetworkRouter {
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion) {
        let fullURL = route.baseURL.appendingPathComponent(route.path)
        Alamofire.request(fullURL, method: route.httpMethod ,parameters: route.parameters, headers: route.headers).responseData { response in
            switch response.result {
            case .success(let data):
                completion(data, response.response, nil)
                break
            case .failure(let error):
                completion(nil, nil, error)
                break
            }
        }
    }
}
