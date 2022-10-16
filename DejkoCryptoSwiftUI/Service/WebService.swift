//
//  WebService.swift
//  DejkoCryptoSwiftUI
//
//  Created by Furkan Cemal Çalışkan on 16.10.2022.
//

import Foundation

class WebService {
    
    func downloadCurrenciesAsync(url: URL) async throws -> [CryptoModel] {
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let currencies = try JSONDecoder().decode([CryptoModel].self, from: data)
        
        return currencies 
    }
    
   /* func downloadCurrencies(url: URL, completion: @escaping (Result<[CryptoModel]?,DownloadError>) -> Void) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                
                print(error.localizedDescription)
                completion(.failure(.badURL))
                
            }
            
            guard let data = data, error == nil else {
                
                return completion(.failure(.noData))
                
            }
                                  
            guard let currencies = try? JSONDecoder().decode([CryptoModel].self, from: data) else {
                
                return completion(.failure(.dataParseError))
                    
            }
                completion(.success(currencies))
            
            }.resume()
    }
    */
        
    }
    


enum DownloadError : Error {
    
    case badURL
    case noData
    case dataParseError
    
}
