//
//  MainView.swift
//  ExchangeRate
//
//  Created by Milana Antonova on 27.04.22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("Current exchange rate")
                .bold()
                .font(.system(size: 30))
                .padding(.top, 10)
            List{
                ForEach(viewModel.currency, id: \.sap_id){currency in
                    CurrencyItem(currency: currency)
                        .onTapGesture {
                            // let index = self.viewModel.users.firstIndex(where: {$0.id == user.id})
                            // self.viewModel.users[index!].isExpanded.toggle()
                            self.viewModel.selectedCurrency = currency
                            self.viewModel.showDetails = true
                        }
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.appColorBackground)
                }
                .onDelete(perform: {indexSet in
                    self.viewModel.currency.remove(atOffsets: indexSet)}
                )
            }
            .listStyle(.plain)
            
        }
        .background(Color.appColorBackground)
    }
    
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

