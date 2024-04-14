//
//  MindBalanceAppApp.swift
//  MindBalanceApp
//
//  Created by Natalia Camero on 15/4/24.
//

import SwiftUI

@main
struct MindBalanceAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SplashView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
