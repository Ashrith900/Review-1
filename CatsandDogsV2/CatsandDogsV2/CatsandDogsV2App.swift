//
//  CatsandDogsV2App.swift
//  CatsandDogsV2
//
//  Created by Rajiv Mukherjee on 3/27/23.
//

import SwiftUI

@main
struct CatsandDogsV2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(model: AnimalModel())
        }
    }
}
