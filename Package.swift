// swift-tools-version:5.7

import PackageDescription

let package = Package(name: "SJFluidSegmentedControl",
                      products: [.library(name: "SJFluidSegmentedControl",
                                          targets: ["SJFluidSegmentedControl_Example"])],
                      targets: [.target(name: "SJFluidSegmentedControl_Example",
                                        exclude: ["Info.plist"]),
                                ],
                      swiftLanguageVersions: [.v5])
