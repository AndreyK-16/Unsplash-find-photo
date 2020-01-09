//
//  NetworkDataFetcher.swift
//  Unsplash for RedMadRobot
//
//  Created by Андрей К on 27.12.2019.
//  Copyright © 2019 Андрей Кальдяев. All rights reserved.
//

import Foundation

class NetworkDataFetcher {
    var networkService = NetworkService()
    
//    запрос фото
    func fetchImages(searchTerm: String, completion: @escaping (SearchResults?) -> ()) {
        networkService.request(serchTerm: searchTerm) { (data, error) in
            if let error = error {
                print("Error recieved requesting data: \(error.localizedDescription)")
                completion(nil)
            }
            
            let decode = self.decodeJSON(type: SearchResults.self, from: data)
            completion(decode)
            
        }
    }
    
    func decodeJSON<T: Decodable>(type: T.Type, from: Data?) -> T? {
        let decoder = JSONDecoder()
        guard let data = from else { return nil }
        
        do {
            let objects = try decoder.decode(type.self, from: data)
            return objects
        } catch let jsonError {
            print("Failed to decode JSON", jsonError)
            return nil
        }
    }
    
}
