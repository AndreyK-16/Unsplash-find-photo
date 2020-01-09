//
//  NetworkServiceDailyPhoto.swift
//  Unsplash for RedMadRobot
//
//  Created by Андрей К on 25.12.2019.
//  Copyright © 2019 Андрей Кальдяев. All rights reserved.
//

/*
import Foundation

class NetworkServiceDailyPhoto {
    
//    Запрос данных по URL
    func request(serchTerm: String, completion: @escaping (Data?, Error?) -> Void) {
        let parameters = self.prepareParametrs(searchTerm: serchTerm)
        let url = self.url(params: parameters)
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = prepareHeaders()
        request.httpMethod = "get"
        let task = createDataTask(from: request, completion: completion)
        task.resume()
    }
    
//    ID
    private func prepareHeaders() -> [String: String]? {
        var headers = [String: String]()
        headers["Authorization"] = "Client-ID 78cb216119398ee826833ba1664ac360c3762b8496b3a74afaf14f14de8cfb53"
        return headers
    }
    
//  для фото дня ??
//    private func prepareParametrs(searchTerm: String?) -> [String: String] {
//        var parameters = [String: String]()
//        parameters["filter"] = "daily"
//        return parameters
//    }
    
    
//    url
    private func url(params: [String: String]) -> URL {
        var compoments = URLComponents()
        compoments.scheme = "https"
        compoments.host = "api.unsplash.com"
        compoments.path = "/photos/random"
        return compoments.url!
    }
    
    private func createDataTask(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) -> URLSessionTask {
        return URLSession.shared.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async {
                completion(data, error)

            }
        }
    }
}
*/
