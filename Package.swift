// swift-tools-version:5.7

import PackageDescription

let package = Package(name: "SJFluidSegmentedControl",
                      platforms: [.macOS(.v10_13),
                                  .iOS(.v11),
                                  .tvOS(.v11),
                                  .watchOS(.v4)],
                      products: [.library(name: "SJFluidSegmentedControl",
                                          targets: ["SJFluidSegmentedControl"])],
                      targets: [.target(name: "SJFluidSegmentedControl_Example",
                                        path: "Source",
                                        exclude: ["Info.plist"],
                                        linkerSettings: [.linkedFramework("CFNetwork",
                                                                          .when(platforms: [.iOS,
                                                                                            .macOS,
                                                                                            .tvOS,
                                                                                            .watchOS]))]),
                                .testTarget(name: "SJFluidSegmentedControl_Tests",
                                            dependencies: ["SJFluidSegmentedControl"],
                                            path: "Tests",
                                            exclude: ["Info.plist", "Test Plans"],
                                            resources: [.process("Resources")])],
                      swiftLanguageVersions: [.v5])
