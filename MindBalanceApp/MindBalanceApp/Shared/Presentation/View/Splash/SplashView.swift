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
            let gradientColors: [Color] = [
                Color(red: 21/255, green: 50/255, blue: 101/255), // Azul dark
                Color(red: 89/255, green: 150/255, blue: 176/255) // Azul light
            ]
            
            LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(pulse ? 1.1 : 1.0) // Cambia el tamaño del logo en la animación
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true)) {
                        self.pulse.toggle()
                }
            }
        }
    }
}

#Preview {
    SplashView()
}

