//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 住山大誠 on 2022/01/03.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
