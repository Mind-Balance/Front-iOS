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
            LinearGradient.loginColor()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("¿Has olvidado tu contraseña?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .id(1)
                
                Text("Por favor, introduce el email asociado a tu cuenta y tu DNI")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .id(2)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.textFieldColor())
                    .frame(width: 350, height: 40)
                    .foregroundColor(Color.white)
                    .cornerRadius(5.0)
                    .padding(.horizontal)
                    .id(3)
                
                TextField("DNI", text: $dni)
                    .padding()
                    .background(Color.textFieldColor())
                    .frame(width: 350, height: 40)
                    .cornerRadius(5.0)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .id(4)
                
                Button(action: {
                    // Lógica de recuperación de contraseña
                }) {
                    Text("Confirmar identidad")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 350, height: 40)
                        .background(Color.buttonColor())
                        .cornerRadius(5.0)
                        .padding()
                        .id(5)
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
