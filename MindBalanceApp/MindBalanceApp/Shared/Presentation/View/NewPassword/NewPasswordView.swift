//
//  NewPasswordView.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 21/4/24.
//

import SwiftUI

struct NewPasswordView: View {
    @State private var password = ""
   
    var body: some View {
       
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 150/255, green: 202/255, blue: 209/255),
                Color(red: 21/255, green: 72/255, blue: 101/255)
            ]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
          
            VStack(spacing: 20) {
               Text("Nueva Contraseña")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .id("1")
                
                Text("Bienvenido/a ¡Cambiemos tu contraseña!Por favor, introduce una nueva contraseña y repítela para confirmarla")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .id("2")
                
                SecureField("Contraseña", text: $password)
                    .padding()
                    .background(Color(red: 89/255, green: 196/255, blue: 176/255))
                    .frame(width: 350, height: 40)
                    .foregroundColor(Color.white)
                    .cornerRadius(5.0)
                    .padding(.horizontal)
                    .id("3")
                
                SecureField("Contraseña", text: $password)
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
                    Text("Crear nueva contraseña")
                        .font(.headline)
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
    NewPasswordView()
}
