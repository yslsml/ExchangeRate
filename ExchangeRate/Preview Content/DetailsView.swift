//
//  DetailsView.swift
//  ExchangeRate
//
//  Created by Milana Antonova on 27.04.22.
//

import SwiftUI

struct DetailsView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "xmark")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20, alignment: .center)
                    .padding()
                    .onTapGesture {
                        self.viewModel.showDetails = false
                    }
            }
            
            VStack{
                HStack{
                    Text("USD_in: \(viewModel.selectedCurrency!.USD_in)")
                        .bold()
                        .frame(maxWidth: 120, alignment: .leading)
                        .padding(.leading, 25)
                    Spacer()
                    Text("USD_out: \(viewModel.selectedCurrency!.USD_out)")
                        .bold()
                        .frame(maxWidth: 120, alignment: .trailing)
                        .padding(.trailing, 30)
                }
                .padding()
                HStack {
                    Text("EUR_in: \(viewModel.selectedCurrency!.EUR_in)")
                        .bold()
                        .frame(maxWidth: 120, alignment: .leading)
                        .padding(.leading, 25)
                    Spacer()
                    Text("EUR_out: \(viewModel.selectedCurrency!.EUR_out)")
                        .bold()
                        .frame(maxWidth: 120, alignment: .trailing)
                        .padding(.trailing, 30)
                }
                .padding()
                HStack {
                    Text("RUB_in: \(viewModel.selectedCurrency!.RUB_in)")
                        .bold()
                        .frame(maxWidth: 120, alignment: .leading)
                        .padding(.leading, 25)
                    Spacer()
                    Text("RUB_out: \(viewModel.selectedCurrency!.RUB_out)")
                        .bold()
                        .frame(maxWidth: 120, alignment: .trailing)
                        .padding(.trailing, 30)
                }
                .padding()
            }
            .border(.gray)
            .font(.system(size: 20))
            
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text("Information about bank department ").italic().bold() + Text("\"\(viewModel.selectedCurrency!.filials_text)\"").bold()
                }
                .font(.system(size: 22))
                .padding([.top, .bottom], 10)
                
                HStack {
                    Text("Filial id: ").italic() + Text(viewModel.selectedCurrency!.filial_id)
                }
                .padding(.bottom, 5)
                
                HStack {
                    Text("Sad id: ").italic() + Text(viewModel.selectedCurrency!.sap_id)
                }
                .padding(.bottom, 5)
                
                HStack {
                    Text("Worktime: ").italic() + Text(viewModel.selectedCurrency!.info_worktime)
                }
                .padding(.bottom, 5)
                
                HStack {
                    Text("Address: ").italic() + Text("\(viewModel.selectedCurrency!.name_type) \(viewModel.selectedCurrency!.name), \(viewModel.selectedCurrency!.street_type) \(viewModel.selectedCurrency!.street), \(viewModel.selectedCurrency!.home_number)")
                }
                .padding(.bottom, 5)
            }
            .font(.system(size: 20))
            .foregroundColor(.black)
            .padding([.leading, .trailing], 40)
            
            Spacer()
        }
        .background(Color.appColorMain)
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
