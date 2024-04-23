//
//  Extension+Color.swift
//  MindBalanceApp
//
//  Created by Manuel Cazalla Colmenero on 23/4/24.
//

import SwiftUI

extension LinearGradient {
   static func loginColor() -> LinearGradient {
        return LinearGradient(
            gradient: Gradient(colors: [Color(red: 150/255, green: 202/255, blue: 209/255),
                                        Color(red: 21/255, green: 72/255, blue: 101/255)]),
            startPoint: .top,
            endPoint: .bottom
        )
    }
}

extension Color {
    static func buttonColor() -> Color {
        return Color(red: 210/255, green: 232/255, blue: 209/255)
    }}

extension Color {
    static func textFieldColor() -> Color {
        return Color(red: 89/255, green: 196/255, blue: 176/255)
    }
    
}
