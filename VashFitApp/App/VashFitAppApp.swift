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
import FirebaseCore
@main
struct VashFitAppApp: App {
    init() {
           FirebaseApp.configure()
       }
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                WelcomePageView()
            }
        }
    }
}
