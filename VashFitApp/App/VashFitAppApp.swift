//
//  VashFitAppApp.swift
//  VashFitApp
//
//  Created by Daniil Vaschilin on 25/09/2024.
//

import SwiftUI
import PhotosUI
import Firebase
import FirebaseFirestore
@main
struct VashFitAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                WelcomePageView()
            }
        }
    }
}
