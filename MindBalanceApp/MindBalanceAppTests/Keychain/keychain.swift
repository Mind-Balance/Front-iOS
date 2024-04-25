//
//  keychain.swift
//  MindBalanceAppTests
//
//  Created by Manuel Cazalla Colmenero on 25/4/24.
//

import XCTest

@testable import MindBalanceApp

class KeychainTests: XCTestCase {
    
    class KeychainTests: XCTestCase {
        
        
        func testSaveKC() {
            let clave = "clavePrueba"
            let valor = "valorPrueba"
            XCTAssertTrue(saveKC(key: clave, value: valor))
        }
        
        
        func testLoadKC() {
            let clave = "clavePrueba"
            let valor = "valorPrueba"
            
            
            saveKC(key: clave, value: valor)
            
            XCTAssertEqual(loadKC(key: clave), valor)
        }
        
        
        func testDeleteKC() {
            let clave = "clavePrueba"
            let valor = "valorPrueba"
            
            
            saveKC(key: clave, value: valor)
            
            
            XCTAssertEqual(loadKC(key: clave), valor)
            
            
            XCTAssertTrue(deleteKC(key: clave))
            
            
            
        }
    }
}
