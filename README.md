# multiplatform-realitykit-demo

Most RealityKit demo projects hardcode to working on visionOS only.

This project provides an example of how to make it work in a multi-platform setting.  We support:
- iOS (so iPhone and iPad work)
- macOS
- visionOS

This project provides the Info.plist and App Scene magic to make all situations work without crashing.

We also polyfilla the missing code to manipulate/rotate objects outside of visionOS.  This is done through a local Package.  This keeps the actual model we want to show clean of platform uniques (rcp.donut).

This project is a current work-in-progress.
