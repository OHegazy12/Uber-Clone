//
//  Uber_CloneApp.swift
//  Uber Clone
//
//  Created by Omar Hegazy on 7/22/23.
//

import SwiftUI

@main
struct Uber_CloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeViewController()
                .environmentObject(locationViewModel)
        }
    }
}
