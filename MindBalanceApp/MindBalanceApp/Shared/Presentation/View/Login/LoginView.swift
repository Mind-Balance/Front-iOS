//
//  LoginView.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 20/4/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var rememberMe = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 150/255, green: 202/255, blue: 209/255),Color(red: 21/255, green: 72/255, blue: 101/255)]), startPoint: .top, endPoint: .bottom)
            
            VStack() {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 50)
                    .id("1")
                
                VStack(spacing: 10) {
                    Text("¡Hola! Qué gusto verte por aquí")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .id("2")
                    
                    Text("Shhh... No se lo digas a tu jefe, pero aquí se viene a desconectar")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .id("3")
                    
                    Spacer()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .background(Color(red: 89/255, green: 196/255, blue: 176/255))
                        .frame(width: 350, height: 40)
                        .cornerRadius(5.0)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                        .id("4")
                    
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(red: 89/255, green: 196/255, blue: 176/255))
                        .frame(width: 350, height: 40)
                        .cornerRadius(5.0)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .id("5")
                    
                    Spacer()
                    Button(action: {
                        // Lógica de inicio de sesión
                    }) {
                        Text("Iniciar sesión")
                            .font(.headline)
                            .foregroundStyle(.black)
                            .frame(width: 350, height: 40)
                            .background(Color(red: 210/255, green: 232/255, blue: 209/255))
                            .cornerRadius(5.0)
                            .padding()
                            .frame(width: 300, height: 50)
                            .id("6")
                    }
                    
                    HStack {
                        Button(action: {
                            rememberMe.toggle()
                        }) {
                            Image(systemName: rememberMe ? "checkmark.square" : "square")
                                .foregroundColor(.white)
                                .id("7")
                            
                        }
                        Text("Recuérdame")
                            .foregroundColor(.white)
                            .font(.body)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        NavigationLink(destination: PasswordRecoveryView()) {
                            Text("¿Olvidé mi contraseña?")
                                .foregroundColor(.white)
                                .font(.body)
                                .fontWeight(.bold)
                        }
                    }
                    .padding(.horizontal,30)
                }
                Spacer()
                    .padding()
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    LoginView()
}
