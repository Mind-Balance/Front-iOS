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
            
            LinearGradient.loginColor()
            
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(pulse ? 1.3 : 1.0)
                .id(1)
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

