//
//  EsempioProgettoApp.swift
//  EsempioProgetto WatchKit Extension
//
//  Created by Pasquale Ercolino on 13/07/21.
//

import SwiftUI

@main
struct EsempioProgettoApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
