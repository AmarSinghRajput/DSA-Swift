// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "DSA-Swift",
  platforms: [
    .macOS(.v14)
  ],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "DSA-Swift",
      targets: ["DSA-Swift"],
    )
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "DSA-Swift",
      exclude: [
        "Algorithms/README.md",
        "Algorithms/Sorting/README.md",
        "Algorithms/Searching/README.md",
        "Algorithms/Greedy/README.md",
        "Algorithms/DynamicProgramming/README.md",
        "Data-Structures/README.md",
        "Problem-Patterns/README.md",
        "Problem-Patterns/SlidingWindow/README.md",
        "Problem-Patterns/TwoPointers/README.md",
        "Problem-Patterns/Backtracking/README.md",
        "Problem-Patterns/Recursion/README.md",
        "Problem-Patterns/FastSlowPointers/README.md",
        "Problem-Patterns/PrefixSum/README.md",
        "Problem-Patterns/MonotonicStack/README.md",
        "Interview-Problems/README.md",
      ]
    ),
    .testTarget(
      name: "DSA-SwiftTests",
      dependencies: ["DSA-Swift"],
    ),
  ],
)
