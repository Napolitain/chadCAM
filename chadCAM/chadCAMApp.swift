//
//  chadCAMApp.swift
//  chadCAM
//
//  Created by Maxime Boucher on 15/12/2021.
//

import SwiftUI

@main
struct chadCAMApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ViewModel())
        }
    }
}
