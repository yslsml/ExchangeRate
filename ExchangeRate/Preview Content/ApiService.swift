//
//  ApiService.swift
//  ExchangeRate
//
//  Created by Milana Antonova on 27.04.22.
//

import Foundation
import Alamofire
import Combine

class ApiService {
  static let BASE_URL = "https://belarusbank.by/api/kursExchange"
    
    func getCurrentExchaneRate() -> AnyPublisher<[CurrentExchangeRate], AFError> {
        let publisher = AF.request(ApiService.BASE_URL, method: .get)
            .publishDecodable(type: [CurrentExchangeRate].self)
        
        return publisher.value()
    }
    
}
