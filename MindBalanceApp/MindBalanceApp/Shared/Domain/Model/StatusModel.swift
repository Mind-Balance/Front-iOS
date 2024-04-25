//
//  StatusModel.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 15/4/24.
//

import Foundation

enum Status: Equatable {
    case none
    case loaded
    case loading
    case error(error: String)
}
