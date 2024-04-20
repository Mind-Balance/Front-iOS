//
//  SplashView.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla on 15/4/24.
//

import SwiftUI

struct SplashView: View {
    @State private var pulse: Bool = false
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color(red: 150/255, green: 202/255, blue: 209/255),Color(red: 21/255, green: 72/255, blue: 101/255)]), startPoint: .top, endPoint: .bottom)
            
            
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(pulse ? 1.3 : 1.0)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true)) {
                        self.pulse.toggle()
                    }
                }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
#Preview {
    SplashView()
}

