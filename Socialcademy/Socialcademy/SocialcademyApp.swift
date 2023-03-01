//
//  SocialcademyApp.swift
//  Socialcademy
//
//  Created by andrew austin on 2/22/23.
//

import SwiftUI
import Firebase

@main
struct SocialcademyApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
}
