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
    @StateObject var rootViewModel = RootViewModel()
    

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(rootViewModel)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        rootViewModel.status = .loaded
                    }
                }
            
        }
    }
}
