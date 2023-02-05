//
//  ArchitecturesSwiftUIApp.swift
//  ArchitecturesSwiftUI
//
//  Created by Frédéric Helfer on 05/02/23.
//

import SwiftUI

@main
struct ArchitecturesSwiftUIApp: App {
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationStack {
                    if appState.isAuthorized {
                        HomeView()
                    } else {
                        LoginView()
                    }
                }
            }
            .environmentObject(appState)
        }
    }
}
