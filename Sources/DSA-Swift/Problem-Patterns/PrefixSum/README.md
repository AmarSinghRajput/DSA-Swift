# Prefix Sum Pattern

Precompute cumulative sums for efficient range queries and aggregate calculations.

## Overview

Prefix sum is an optimization technique that trades space for time, enabling O(1) range queries.

| Problem Type | Key Idea | Difficulty | Status |
| ------------ | -------- | ---------- | ------ |
| Range Sum Query | Query sum of range [i, j] | ⭐ | Not Started |
| Subarray Sum | Find subarray with target sum | ⭐⭐ | Not Started |
| Running Sum | Compute cumulative sums | ⭐ | Not Started |
| 2D Array Sum | Sum queries in 2D grids | ⭐⭐ | Not Started |
| Difference Array | Range update queries | ⭐⭐ | Not Started |

## Pattern Explanation

### 1D Prefix Sum

**Definition**: prefix[i] = sum of all elements from index 0 to i-1

**Preprocessing**: O(n) time, O(n) space

```swift
// Build prefix sum array
var prefix = [0]
for num in nums {
    prefix.append(prefix.last! + num)
}
```

**Range Query**: O(1) time

```swift
// Sum from index i to j (inclusive)
// sumRange(i, j) = prefix[j+1] - prefix[i]
func sumRange(_ i: Int, _ j: Int) -> Int {
    return prefix[j + 1] - prefix[i]
}
```

### 2D Prefix Sum

**Definition**: prefix[i][j] = sum of all elements in rectangle (0,0) to (i-1,j-1)

```swift
// Build 2D prefix sum
var prefix = Array(repeating: Array(repeating: 0, count: cols+1), count: rows+1)

for i in 1...rows {
    for j in 1...cols {
        prefix[i][j] = matrix[i-1][j-1] 
                     + prefix[i-1][j] 
                     + prefix[i][j-1] 
                     - prefix[i-1][j-1]
    }
}
```

**Range Query**: O(1) time

```swift
// Sum of rectangle from (r1,c1) to (r2,c2)
func sumRegion(_ r1: Int, _ c1: Int, _ r2: Int, _ c2: Int) -> Int {
    return prefix[r2+1][c2+1] 
         - prefix[r1][c2+1] 
         - prefix[r2+1][c1] 
         + prefix[r1][c1]
}
```

## Common Problems

1. **Range Sum Query** - Immutable/mutable arrays
2. **Subarray Sum Equals K** - Count subarrays with sum k
3. **Maximum Subarray Sum** - Kadane's algorithm variant
4. **Continuous Subarray Sum** - Sum divisible by k
5. **Product of Array Except Self** - Prefix/suffix products
6. **Range Sum Query 2D** - 2D prefix sums
7. **Range Update Queries** - Difference arrays

## Interview Tips

✅ **When to Use Prefix Sum**:
- Multiple range queries → Precompute prefix
- Need range sums frequently → Prefix sum optimal
- 2D array queries → Prefix sum for efficiency
- Time-memory tradeoff acceptable → Prefix sum

✅ **Optimization Opportunity**:
If you see nested loop computing range sums:
```swift
// O(n²) without prefix sum
var sum = 0
for i in 0...j {
    sum += array[i]
}

// O(1) with prefix sum
let sum = prefix[j+1] - prefix[i]
```

✅ **Common Patterns**:
- **Prefix with Map**: Track prefix sums in hash map
- **Difference Array**: For range update problems
- **Modulo Prefix**: When checking divisibility

## Complexity Analysis

| Operation | Time (Without) | Time (With) | Space |
| --------- | -------------- | ----------- | ----- |
| Single Query | O(n) | O(1) | O(n) |
| k Queries | O(k × n) | O(k) | O(n) |
| Build | O(1) | O(n) | O(n) |

**Trade-off**: Extra O(n) space for O(n) time improvement per query

## Subarray Sum Pattern

**Problem**: Find subarrays with sum equal to target

**Approach**:
1. Build prefix sum array
2. For each position j, look for position i where prefix[j] - prefix[i] = target
3. Use hash map to track seen prefix sums

```swift
var count = 0
var sumMap = [0: 1]  // prefix sum -> count

var sum = 0
for num in nums {
    sum += num
    if let prevCount = sumMap[sum - target] {
        count += prevCount
    }
    sumMap[sum, default: 0] += 1
}
```

**Time**: O(n), **Space**: O(n)

## Difference Array Pattern

For range update problems (add value to range):

```swift
// Update range [l, r] by adding val
diff[l] += val
diff[r+1] -= val

// Reconstruct actual values
var result = 0
for (i, d) in diff.enumerated() {
    result += d
    actual[i] = result
}
```

## Learning Path

1. **1D Prefix Sum**: Single array queries
2. **Hash Map Variant**: Subarray sum problems
3. **2D Prefix Sum**: Grid queries
4. **Difference Array**: Range updates
5. **Advanced**: Segment trees for updates

## Testing

Tests coming soon in `Tests/DSA-SwiftTests/`

## Related Patterns

- **Sliding Window** - For problems without precomputation
- **Two Pointers** - Alternative for some subarray problems
- **Hash Map** - Used with prefix sum for lookups
- **Segment Trees** - Advanced structure for range queries

## Resources

- LeetCode: Prefix Sum problems
- GeeksforGeeks: Prefix Sum Technique
- "Introduction to Algorithms" - Prefix computation
