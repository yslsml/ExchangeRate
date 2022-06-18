//
//  ExchangeRateApp.swift
//  ExchangeRate
//
//  Created by Milana Antonova on 27.04.22.
//

import SwiftUI

@main
struct ExchangeRateApp: App {
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
            
        }
    }
}
