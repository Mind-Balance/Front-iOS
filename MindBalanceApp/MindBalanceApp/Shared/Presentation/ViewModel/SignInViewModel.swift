//
//  LoginViewModel.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 24/4/24.
//

import Foundation
import Combine

class SignInViewModel: ObservableObject {
    @Published var accessToken: String = ""
    @Published var refreshToken: String = ""
    @Published var signIn: [SignInResponse]?
    private let baseNetwork = BaseNetwork()
    
    @Published var status = Status.none
    
    
    private var suscriptors = Set<AnyCancellable>()
    
    func login(email:String , password: String){
        
      status = .loading
        
        URLSession.shared
            .dataTaskPublisher(for: BaseNetwork().signIn(email: email, password: password))
            .tryMap{
                 guard let response = $0.response as? HTTPURLResponse,
                      response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
            }
                //Todo OK. convierto Data -> Cadena usando codificacion utf8
                return String(decoding: $0.data, as: UTF8.self)
            }
            .receive(on: DispatchQueue.main)
            .sink { completion in
                
                switch completion{
                case .failure:
                    self.status = .error(error: "Usuario y/o clave erronea") //LogiN Error
                case .finished:
                    self.status = .loading
                }
            } receiveValue: { token in
                self.accessToken = token
            }
            .store(in: &suscriptors)

        
    }
    
}
