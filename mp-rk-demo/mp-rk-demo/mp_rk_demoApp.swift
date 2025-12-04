//
//  mp_rk_demoApp.swift
//  mp-rk-demo
//
//  Created by Faisal Memon on 04/12/2025.
//

import SwiftUI

import RealityKit // RealityKit has a Scene, so we need to use SwiftUI.Scene from now on
import RealityKitContent

@main
struct mp_rk_demoApp: App {
    
    init() {
        RealityKitContent.GestureComponent.registerComponent()
    }
    
#if os(visionOS)
    var body: some SwiftUI.Scene {
        WindowGroup {
            ContentView()
        }
        // Info.plist dictionary UIWindowSceneSessionRoleApplication
        // has item UIWindowSceneSessionRoleVolumetricApplication
        // Therefore if we don't provide a volumetric window the
        // system will crash.
        .windowStyle(.volumetric)
        .defaultSize(width: 2, height: 1.75, depth: 1, in: .meters)
    }
#else
    var body: some SwiftUI.Scene {
        WindowGroup {
            ContentView()
        }
    }
#endif
}
