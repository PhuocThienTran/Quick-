//
//  NetworkService.swift
//  QuickCare
//
//  Created by DTran on 24/3/20.
//  Copyright © 2020 Quick Apps. All rights reserved.
//

import Foundation
import Moya

private let apiKey = "NDlUF09l9Pi-LTh1DLbiyzIFIPqEfVuVpfyDHdyoNZGHEai89YTpbMERBTi5RcZKjUcaqdxxUIMFz_FUUomJ0ohqdvOttizj0Dy4MQpS73drqQvf0n8RSXdbp9rUXXYx"

enum YelpService {
    enum BusinessesProvider: TargetType {
        case search(lat: Double, long: Double)
        case details(id: String)
        
        var baseURL: URL {
            return URL(string: "https://api.yelp.com/v3/businesses")!
        }

        var path: String {
            switch self {
            case .search:
                return "/search"
            case let .details(id):
                return "/\(id)"
            }
        }

        var method: Moya.Method {
            return .get
        }

        var sampleData: Data {
            return Data()
        }

        var task: Task {
            switch self {
            case let .search(lat, long):
                return .requestParameters(
                    parameters: ["latitude": lat, "longitude": long, "limit": 10], encoding: URLEncoding.queryString)
            case .details:
                return .requestPlain
            }
            
        }

        var headers: [String : String]? {
            return ["Authorization": "Bearer \(apiKey)"]
        }
    }
}
