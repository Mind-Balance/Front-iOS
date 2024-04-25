//
//  NewPasswordView.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 21/4/24.
//

import SwiftUI

struct NewPasswordView: View {
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        
        ZStack {
            LinearGradient.loginColor()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                
                HStack() {
                    Text("Nueva Contraseña")
                        .padding(.leading, 0)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 5)
                        .id(1)
                    Spacer()
                    Spacer()
                }
                .padding(.bottom, 0)
                
                
                Text("Bienvenido/a ¡Cambiemos tu contraseña! Por favor, introduce una nueva contraseña y repítela para confirmarla")
                    .font(.body)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 0)
                    .id(2)
                
                HStack {
                    Image(systemName: "lock.shield.fill")
                        .foregroundColor(.white)
                        .padding(.leading, 12)
                    SecureField("Contraseña", text: $password)
                        .padding(.vertical)
                        .id(3)
                }
                .background(Color.textFieldColor())
                .frame(width: 350, height: 40)
                .cornerRadius(5.0)
                .foregroundColor(Color.white)
                .padding(.bottom, 10)
                
                HStack {
                    Image(systemName: "lock.shield.fill")
                        .foregroundColor(.white)
                        .padding(.leading, 12)
                    SecureField("Contraseña", text: $confirmPassword)
                        .padding(.vertical)
                        .id(4)
                }
                .background(Color.textFieldColor())
                .frame(width: 350, height: 40)
                .cornerRadius(5.0)
                .foregroundColor(Color.white)
                .padding(.bottom, 10)
                
                
                NavigationLink(destination: SuccesPasswordView()) {
                    Text("Crear nueva contraseña")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .frame(width: 350, height: 50)
                        .background(Color.buttonColor())
                        .cornerRadius(5.0)
                        .padding()
                        .frame(width: 300, height: 50)
                        .id(5)
                }
                
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
            }
            .padding()
            
            
        }
    }
}

#Preview {
    NewPasswordView()
}
