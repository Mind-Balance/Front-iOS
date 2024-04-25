//
//  LoginView.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 20/4/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var rememberMe = false
    
     var signInViewModel = SignInViewModel()
    
    let baseNtework = BaseNetwork()
    
    var body: some View {
        ZStack {
            LinearGradient.loginColor()
            
            VStack() {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 50)
                    .id(1)
                
                VStack(spacing: 10) {
                    Text("¡Hola! Qué gusto verte por aquí")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .id(2)
                    
                    Text("Shhh... No se lo digas a tu jefe, pero aquí se viene a desconectar")
                        .font(.body)
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 45)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .id(3)
                    
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.white)
                            .padding(.leading, 2)
                        TextField("Username", text: $email)
                            .padding(.vertical)
                            .id(4)
                    }
                    .padding(.horizontal)
                    .background(Color.textFieldColor())
                    .frame(width: 350, height: 40)
                    .cornerRadius(5.0)
                    .foregroundColor(Color.white)
                    
                    HStack {
                        Image(systemName: "lock.shield.fill")
                            .foregroundColor(.white)
                            .padding(.leading, 2)
                        SecureField("Password", text: $password)
                            .padding(.vertical)
                            .id(5)
                    }
                    .padding(.horizontal)
                    .background(Color.textFieldColor())
                    .frame(width: 350, height: 40)
                    .cornerRadius(5.0)
                    .foregroundColor(Color.white)
                    
                    
                    //TODO: signInViewModel.login(email: email, password: password)
                    NavigationLink(destination: NewPasswordView()) {
                        Text("Iniciar sesión")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                            .frame(width: 350, height: 40)
                            .background(Color.buttonColor())
                            .cornerRadius(5.0)
                            .padding()
                            .frame(width: 300, height: 50)
                            .id(6)
                    }
                    
                    HStack {
                        Button(action: {
                            rememberMe.toggle()
                        }) {
                            Image(systemName: rememberMe ? "checkmark.square" : "square")
                                .foregroundColor(.white)
                                .id(7)
                            
                        }
                        Text("Recuérdame")
                            .foregroundColor(.white)
                            .font(.body)
                            .fontWeight(.bold)
                            .id(8)
                        
                        Spacer()
                        
                        NavigationLink(destination: PasswordRecoveryView()) {
                            Text("¿Olvidé mi contraseña?")
                                .foregroundColor(Color.textFieldColor())
                                .font(.body)
                                .fontWeight(.bold)
                                .id(9)
                        }
                    }
                    .padding(.horizontal,30)
                }
                Spacer()
                    .padding()
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)

    }
    
}

#Preview {
    LoginView()
}

