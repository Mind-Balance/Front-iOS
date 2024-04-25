//
//  BaseNetwork.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 24/4/24.
//

import Foundation

struct BaseNetwork {
    func signIn(email: String, password: String) -> URLRequest {
        let apiUrl = "http://127.0.0.1:8080/api/v1/auth/signin"
        let apiKey = " 55618b9b-4447-4cde-bf22-42f62f01e6cd"
        
        
        let credentials = "\(email):\(password)"
        
        guard let data = credentials.data(using: .utf8) else {
            fatalError("No se pudo codificar las credenciales en Base64")
        }
        
        let base64Credentials = data.base64EncodedString()
        
        let authorization = "Basic \(base64Credentials)"
        
        guard let url = URL(string: apiUrl) else {
            fatalError("URL mal formada")
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        
        request.addValue(apiKey, forHTTPHeaderField: "MindBalance-ApiKey")
        request.addValue(authorization, forHTTPHeaderField: "Authorization")
        
        print(request)
        return request
    }
}

