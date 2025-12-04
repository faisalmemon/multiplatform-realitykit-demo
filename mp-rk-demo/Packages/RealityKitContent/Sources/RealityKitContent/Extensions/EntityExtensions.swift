/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
App-specific extension on Entity.
*/

import Foundation
import RealityKit

public extension Entity {
    var gestureComponent: GestureComponent? {
        get { components[GestureComponent.self] }
        set { components[GestureComponent.self] = newValue }
    }
    
    /// Returns the position of the entity specified in the scene's coordinate system (world space).
    /// On visionOS, this corresponds to the device's native coordinate system.
    var scenePosition: SIMD3<Float> {
        get { position(relativeTo: nil) }
        set { setPosition(newValue, relativeTo: nil) }
    }
    
    /// Returns the orientation of the entity specified in the scene's coordinate system (world space).
    /// On visionOS, this corresponds to the device's native coordinate system.
    var sceneOrientation: simd_quatf {
        get { orientation(relativeTo: nil) }
        set { setOrientation(newValue, relativeTo: nil) }
    }
}
