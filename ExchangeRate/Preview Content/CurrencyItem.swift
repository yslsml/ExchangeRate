//
//  CurrencyItem.swift
//  ExchangeRate
//
//  Created by Milana Antonova on 27.04.22.
//

import SwiftUI

struct CurrencyItem: View {
    let currency: CurrentExchangeRate
    
    var body: some View {
        VStack{
            HStack{
                Text("USD_in: \(currency.USD_in)")
                    .font(.system(size: 22))
                    .bold()
                    .frame(maxWidth: 150, alignment: .leading)
                Spacer()
                Text("USD_out: \(currency.USD_out)")
                    .font(.system(size: 22))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding()
            HStack {
                Text("EUR_in: \(currency.EUR_in)")
                    .font(.system(size: 22))
                    .bold()
                    .frame(maxWidth: 150, alignment: .leading)
                Spacer()
                Text("EUR_out: \(currency.EUR_out)")
                    .font(.system(size: 22))
                    .bold()
                    .frame(maxWidth: 150, alignment: .trailing)
            }
            .padding()
            HStack {
                Text("RUB_in: \(currency.RUB_in)")
                    .font(.system(size: 22))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                Text("RUB_out: \(currency.RUB_out)")
                    .font(.system(size: 22))
                    .bold()
                    .frame(maxWidth: 150, alignment: .trailing)
            }
            .padding()
            if currency.isExpanded {
                VStack{
                    Text("filial: \(currency.filial_id)")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                }
                .padding(.top, 5)
            }
            
        }
        .padding(5)
        .background(Color.appColorMain)
        .border(.gray)
    }
}

struct CurrencyItem_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyItem(currency: CurrentExchangeRate(USD_in: "1111", USD_out: "1111", EUR_in: "1111", EUR_out: "1111", RUB_in: "1111", RUB_out: "1111", filial_id: "1111", sap_id: "1111", info_worktime: "1111", street_type: "1111", street: "1111", filials_text: "1111", home_number: "1111", name: "1111", name_type: "1111"))

    }
}

