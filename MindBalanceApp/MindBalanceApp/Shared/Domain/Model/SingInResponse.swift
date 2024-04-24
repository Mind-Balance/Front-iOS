//
//  SingInModel.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 24/4/24.
//

import Foundation

struct SignInResponse: Decodable {
    let info: Info
    let results: [User]
    let accessToken: String
    let refreshToken: String
}

struct Info: Decodable {
    let page: Int
    let results: Int
    let seed: String
    let version: String
}

struct User: Decodable {
    let email: String
    let login: Login
    let name: Name
    let picture: Picture
}

struct Login: Decodable {
    let md5: String
    let password: String
    let salt: String
    let sha1: String
    let sha256: String
    let username: String
    let uuid: String
}

struct Name: Decodable {
    let first: String
    let last: String
    let title: String
}

struct Picture: Decodable {
    let large: URL
    let medium: URL
    let thumbnail: URL
}
