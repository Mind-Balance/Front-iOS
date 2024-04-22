//
//  PasswordRecoveryView.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 20/4/24.
//

import SwiftUI

struct PasswordRecoveryView: View {
    @State private var email = ""
    @State private var dni = ""
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 150/255, green: 202/255, blue: 209/255),
                Color(red: 21/255, green: 72/255, blue: 101/255)
            ]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("¿Has olvidado tu contraseña?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .id("1")
                
                Text("Por favor, introduce el email asociado a tu cuenta y tu DNI")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .id("2")
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(red: 89/255, green: 196/255, blue: 176/255))
                    .frame(width: 350, height: 40)
                    .foregroundColor(Color.white)
                    .cornerRadius(5.0)
                    .padding(.horizontal)
                    .id("3")
                
                TextField("DNI", text: $dni)
                    .padding()
                    .background(Color(red: 89/255, green: 196/255, blue: 176/255))
                    .frame(width: 350, height: 40)
                    .cornerRadius(5.0)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .id("4")
                
                Button(action: {
                    // Lógica de recuperación de contraseña
                }) {
                    Text("Confirmar identidad")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 350, height: 40)
                        .background(Color(red: 210/255, green: 232/255, blue: 209/255))
                        .cornerRadius(5.0)
                        .padding()
                        .id("5")
                }
                Spacer()
            }
            .padding()
            
        }
    }
}

#Preview {
    PasswordRecoveryView()
}
