//
//  Keychain.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 24/4/24.
//

import Foundation
import KeychainSwift

func saveKC(key: String , value:String) -> Bool {
    //conviertiendo cadena value en data con codificacion utf8
    if let data = value.data(using: .utf8){
        return KeychainSwift().set(data, forKey: key)
    } else {
        //no desempaqueta...
        return false
    }
}

//Leemos del keychain
func loadKC(key: String) -> String? {
    if let data = KeychainSwift().get(key){
        return data
    } else{
        return ""
    }
}

//Borramos
func deleteKC(key: String) -> Bool{
    KeychainSwift().delete(key)
}
