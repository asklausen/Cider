//
//  URLFetcher.swift
//  Cider
//
//  Created by Scott Hoyt on 8/27/17.
//  Copyright © 2017 Scott Hoyt. All rights reserved.
//

import Foundation

public protocol URLFetcher {
    func fetch(request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
}

extension URLSession: URLFetcher {
    public func fetch(request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        let task = dataTask(with: request) { data, response, error in
            completion(data, error)
        }
        task.resume()
    }
}