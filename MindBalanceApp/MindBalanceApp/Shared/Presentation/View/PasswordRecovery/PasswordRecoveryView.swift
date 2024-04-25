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
            
            VStack(alignment: .leading ) {
                VStack(alignment: .leading, spacing: 7) {
                    Text("¿Has olvidado tu contraseña?")
                        .padding(.top,60)
                        .padding(.leading, 12)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .id(1)
                    
                    Text("Por favor, introduce el email asociado a tu cuenta y tu DNI")
                        .padding(.horizontal)
                        .font(.body)
                        .foregroundColor(Color.white)
                        .frame(width: 330, height: 50)
                        .id(2)
                    
                }
                .padding(.leading, 1)
                
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.white)
                        .padding(.leading, 15)
                    TextField("Email", text: $email)
                        .padding(.vertical)
                        .id(3)
                }
                .background(Color.textFieldColor())
                .frame(width: 350, height: 40)
                .cornerRadius(5.0)
                .foregroundColor(Color.white)
                .padding(.leading, 15)
                .padding(.bottom, 10)
                
                
                
                HStack {
                    Image(systemName: "person.text.rectangle")
                        .foregroundColor(.white)
                        .padding(.leading, 15)
                    TextField("DNI", text: $dni)
                        .padding(.vertical)
                        .id(4)
                }
                .background(Color.textFieldColor())
                .frame(width: 350, height: 40)
                .cornerRadius(5.0)
                .foregroundColor(Color.white)
                .padding(.leading, 15)
                
                
                
                NavigationLink(destination: SuccesPasswordView()) {
                    Text("Crear nueva contraseña")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .frame(width: 350, height: 50)
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
