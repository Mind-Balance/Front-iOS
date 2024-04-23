//
//  SuccesPasswordView.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 21/4/24.
//

import SwiftUI

struct SuccesPasswordView: View {
    var body: some View {
        ZStack {
            LinearGradient.loginColor()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                Image(systemName: "checkmark.square.fill" )
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .id(1)
                
                Text("¡Ya tienes nueva contraseña!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .id(2)
                
                Text("Tu contraseña ha sido cambiada con éxito")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .id(3)
                
                Button(action: {
                    //TODO: Navegación a home
                }) {
                    Text("Continuar")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 300, height: 40)
                        .background(Color.buttonColor())
                        .cornerRadius(5.0)
                        .padding()
                        .id(4)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    SuccesPasswordView()
}
