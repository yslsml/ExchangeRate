//
//  CurrentExchangeRate.swift
//  ExchangeRate
//
//  Created by Milana Antonova on 27.04.22.
//

import Foundation

struct CurrentExchangeRate: Codable{
    
    let USD_in: String
    let USD_out: String
    let EUR_in: String
    let EUR_out: String
    let RUB_in: String
    let RUB_out: String
    let filial_id: String
    let sap_id: String
    let info_worktime: String
    let street_type: String
    let street: String
    let filials_text: String
    let home_number: String
    let name: String
    let name_type: String
    
    var isExpanded = false
    
    private enum CodingKeys: String, CodingKey {
        case USD_in
        case USD_out
        case EUR_in
        case EUR_out
        case RUB_in
        case RUB_out
        case filial_id
        case sap_id
        case info_worktime
        case street_type
        case street
        case filials_text
        case home_number
        case name
        case name_type
    }
}
