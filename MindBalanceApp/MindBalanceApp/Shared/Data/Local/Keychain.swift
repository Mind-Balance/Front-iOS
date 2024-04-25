//
//  Keychain.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 24/4/24.
//

import Foundation
import KeychainSwift

func saveKC(key: String , value:String) -> Bool {
    
    if let data = value.data(using: .utf8){
        return KeychainSwift().set(data, forKey: key)
    } else {
        
        return false
    }
}


func loadKC(key: String) -> String? {
    if let data = KeychainSwift().get(key){
        return data
    } else{
        return ""
    }
}


func deleteKC(key: String) -> Bool{
    KeychainSwift().delete(key)
}
