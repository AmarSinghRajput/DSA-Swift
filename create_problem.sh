#!/bin/bash

PATTERN=$1
PROBLEM=$2

BASE="Sources/DSA-Swift/CorePatterns/$PATTERN"
TEST_BASE="Tests/DSA-SwiftTests"

mkdir -p "$BASE"

# Markdown
cat <<EOL > "$BASE/$PROBLEM.md"
# $PROBLEM

## Pattern
$PATTERN

## Problem

## Intuition

## Complexity
Time:
Space:

## Edge Cases
EOL

# Swift File
cat <<EOL > "$BASE/$PROBLEM.swift"
public struct $PROBLEM {

    public static func solve() {
        
    }
}
EOL

# Test File
cat <<EOL > "$TEST_BASE/${PROBLEM}Tests.swift"
import XCTest
@testable import DSA-Swift

final class ${PROBLEM}Tests: XCTestCase {

    func testExample() {
        XCTAssertTrue(true)
    }
}
EOL

echo "Created $PROBLEM under $PATTERN"
