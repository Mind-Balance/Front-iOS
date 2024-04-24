//
//  RootView.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 20/4/24.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var rootViewModel: RootViewModel
    
    var body: some View {
        NavigationView{
            switch rootViewModel.status {
            case .none:
                withAnimation {
                    SplashView()
                }
            case .loaded:
                withAnimation {
                   LoginView()
                    }
            case .loading:
                withAnimation {
                  NewPasswordView()
                }
                
            case .error(error: let errorString):
                withAnimation {
                   ErrorView()
                    
                }
            }
        }
    }
}

#Preview {
    RootView()
}
