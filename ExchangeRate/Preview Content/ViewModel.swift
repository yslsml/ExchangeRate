//
//  ViewModel.swift
//  ExchangeRate
//
//  Created by Milana Antonova on 27.04.22.
//

import Foundation
import Alamofire
import Combine

class ViewModel: ObservableObject {
    
    @Published var currency: [CurrentExchangeRate] = []
    var cancellation: AnyCancellable?
    let service =  ApiService()
    @Published var text = ""
    
    @Published var showDetails = false
    var selectedCurrency: CurrentExchangeRate? = nil
    
    init() {
        getCurrency()
    }
    
    
    func getCurrency() {
        cancellation = service.getCurrentExchaneRate()
            .mapError({(error) -> Error in
                print("!!! Download error \(error)")
                return error
            })
            .sink(receiveCompletion: { _ in }, receiveValue: { data in
                self.currency.removeAll()
                self.currency.insert(contentsOf: data, at: 0)
                self.text = String.init(describing: self.currency)
            })
    }
    
    
}
