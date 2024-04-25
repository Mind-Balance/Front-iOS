//
//  ViewModel.swift
//  MindBalanceAppTests
//
//  Created by Manuel Cazalla Colmenero on 25/4/24.
//

import XCTest

@testable import MindBalanceApp

class SignInViewModelTests: XCTestCase {
    var viewModel: SignInViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = SignInViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    func testLoginSuccess() {
        let expectation = XCTestExpectation(description: "Login successful")
        
        
        viewModel.login(email: "test@example.com", password: "password")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            XCTAssertEqual(self.viewModel.accessToken, "")
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10.0)
    }
    
    func testLoginFailure() {
        let expectation = XCTestExpectation(description: "Login failed")
        
       viewModel.login(email: "test@example.com", password: "invalidpassword")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            XCTAssertEqual(self.viewModel.status, .error(error: "Usuario y/o clave erronea"))
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10.0)
    }
}

class BaseNetworkTests: XCTestCase {
    var baseNetwork: BaseNetwork!
    
    override func setUp() {
        super.setUp()
        baseNetwork = BaseNetwork()
    }
    
    override func tearDown() {
        baseNetwork = nil
        super.tearDown()
    }
    
    func testSignInRequest() {
        // Verifica que la solicitud URLRequest generada por signIn sea correcta
        let request = baseNetwork.signIn(email: "test@example.com", password: "password")
        
        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.absoluteString, "http://127.0.0.1:8080/api/v1/auth/signin")
        XCTAssertEqual(request.value(forHTTPHeaderField: "MindBalance-ApiKey"), " 55618b9b-4447-4cde-bf22-42f62f01e6cd")
        
        let authorization = request.value(forHTTPHeaderField: "Authorization")
        XCTAssertTrue(authorization?.starts(with: "Basic ") ?? false)
    }
}
