//
//  TestView.swift
//  MindBalanceAppTests
//
//  Created by Manuel Cazalla Colmenero on 24/4/24.
//

import XCTest
import SwiftUI
import ViewInspector
@testable import MindBalanceApp

final class TestView: XCTestCase {
    
    func testSplashView() throws {
        let view = SplashView()
        XCTAssertNotNil(view)
        
        let logo = try view.inspect().find(viewWithId: 1)
        XCTAssertNotNil(logo)
    }
    
    func testLoginView() throws {
        let view = LoginView()
        XCTAssertNotNil(view)
        
        let logo = try view.inspect().find(viewWithId: 1)
        XCTAssertNotNil(logo)
        
        let text = try view.inspect().find(viewWithId: 2)
        XCTAssertNotNil(text)
        
        let contentText = try text.text().string()
        XCTAssertEqual(contentText, "¡Hola! Qué gusto verte por aquí")
        
        let text2 = try view.inspect().find(viewWithId: 3)
        XCTAssertNotNil(text2)
        
        let contentText2 = try text2.text().string()
        XCTAssertEqual(contentText2, "Shhh... No se lo digas a tu jefe, pero aquí se viene a desconectar")
        
        let usernameTextField = try view.inspect().find(viewWithId: 4)
        XCTAssertNotNil(usernameTextField)
        
        let passwordSecureField = try view.inspect().find(viewWithId: 5)
        XCTAssertNotNil(passwordSecureField)
        
        let buttonLogin = try view.inspect().find(viewWithId: 6)
        XCTAssertNotNil(buttonLogin)
    }
    
    func testPasswordRecoveryView() throws {
        let view = PasswordRecoveryView()
        XCTAssertNotNil(view)
        
        let text = try view.inspect().find(viewWithId: 1)
        XCTAssertNotNil(text)
        
        let contentText = try text.text().string()
        XCTAssertEqual(contentText, "¿Has olvidado tu contraseña?")
        
        let text2 = try view.inspect().find(viewWithId: 2)
        XCTAssertNotNil(text2)
        
        let contentText2 = try text2.text().string()
        XCTAssertEqual(contentText2, "Por favor, introduce el email asociado a tu cuenta y tu DNI")
        
        let emailTextField = try view.inspect().find(viewWithId: 3)
        XCTAssertNotNil(emailTextField)
        
        let dniTextField = try view.inspect().find(viewWithId: 4)
        XCTAssertNotNil(dniTextField)
        
        let button = try view.inspect().find(viewWithId: 5)
        XCTAssertNotNil(button)
    }
    
    func testNewPasswordView() throws {
        let view = NewPasswordView()
        XCTAssertNotNil(view)
        
        let text = try view.inspect().find(viewWithId: 1)
        XCTAssertNotNil(text)
        
        let contentText = try text.text().string()
        XCTAssertEqual(contentText, "Nueva Contraseña")
        
        let text2 = try view.inspect().find(viewWithId: 2)
        XCTAssertNotNil(text2)
        
        let contentText2 = try text2.text().string()
        XCTAssertEqual(contentText2, "Bienvenido/a ¡Cambiemos tu contraseña!Por favor, introduce una nueva contraseña y repítela para confirmarla")
        
        let passwordSecureField = try view.inspect().find(viewWithId: 3)
        XCTAssertNotNil(passwordSecureField)
        
        let passwordSecureField2 = try view.inspect().find(viewWithId: 4)
        XCTAssertNotNil(passwordSecureField2)
        
        let button = try view.inspect().find(viewWithId: 5)
        XCTAssertNotNil(button)
    }
    
    func testSuccesPasswordView() throws {
        let view = SuccesPasswordView()
        XCTAssertNotNil(view)
        
        let image = try view.inspect().find(viewWithId: 1)
        XCTAssertNotNil(image)
        
        let text = try view.inspect().find(viewWithId: 2)
        XCTAssertNotNil(text)
        
        let contentText = try text.text().string()
        XCTAssertEqual(contentText, "¡Ya tienes nueva contraseña!")
        
        let text2 = try view.inspect().find(viewWithId: 3)
        XCTAssertNotNil(text2)
        
        let contentText2 = try text2.text().string()
        XCTAssertEqual(contentText2, "Tu contraseña ha sido cambiada con éxito")
        
        let button = try view.inspect().find(viewWithId: 4)
        XCTAssertNotNil(button)
        
        
    }
    
    
}

