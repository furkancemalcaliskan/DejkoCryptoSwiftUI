//
//  CryptoModel.swift
//  DejkoCryptoSwiftUI
//
//  Created by Furkan Cemal Çalışkan on 16.10.2022.
//

import Foundation

//decodable=reading data, encodable=upload data

struct CryptoModel : Decodable, Identifiable, Hashable {
    
    let currency : String
    let price : String
    let id = UUID()
 
    private enum CodingKeys : String, CodingKey {
        case currency = "currency"
        case price = "price"
    }
}
