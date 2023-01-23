//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Majka on 18/01/2023.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
