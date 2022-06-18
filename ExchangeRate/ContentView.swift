//
//  ContentView.swift
//  ExchangeRate
//
//  Created by Milana Antonova on 27.04.22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        if viewModel.showDetails {
            DetailsView()
        } else {
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
