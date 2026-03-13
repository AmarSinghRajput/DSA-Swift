# Two Pointers Pattern

Efficient technique for array/string manipulation using two indices moving at different speeds or directions.

## Overview

| Problem Type | Key Idea | Status | Location |
| ------------ | -------- | ------ | -------- |
| Pair Finding | Find two elements matching condition | 🔄 Ongoing | TwoPointers/ |
| Array Manipulation | Move elements without extra space | 🔄 Ongoing | TwoPointers/ |
| Container Problems | Maximize/minimize between two bounds | 🔄 Ongoing | TwoPointers/ |
| Sorting with Custom Logic | Partition array efficiently | 🔄 Ongoing | TwoPointers/ |

## Pattern Explanation

The two pointers pattern uses two indices to traverse a data structure efficiently.

### Variant 1: Opposite Direction
Pointers start at opposite ends and move toward each other.

**Template**:
```swift
var left = 0
var right = arr.count - 1

while left < right {
    if condition(arr[left], arr[right]) {
        // Process pair
        left += 1
        right -= 1
    } else if needToMoveLeft {
        right -= 1
    } else {
        left += 1
    }
}
```

**Use Cases**:
- Two Sum in sorted array
- Container with most water
- Reverse array
- Check if palindrome

### Variant 2: Same Direction
Both pointers move in same direction but at different speeds.

**Template**:
```swift
var slow = 0
var fast = 0

while fast < arr.count {
    if condition(arr[fast]) {
        swap(&arr[slow], &arr[fast])
        slow += 1
    }
    fast += 1
}
```

**Use Cases**:
- Remove duplicates
- Move zeros to end
- Partition array
- Remove elements

### Variant 3: Two Sorted Arrays
Merge logic with pointers in two arrays.

**Template**:
```swift
var i = 0  // First array
var j = 0  // Second array
var k = 0  // Result

while i < arr1.count && j < arr2.count {
    if arr1[i] <= arr2[j] {
        result[k] = arr1[i]
        i += 1
    } else {
        result[k] = arr2[j]
        j += 1
    }
    k += 1
}
```

**Use Cases**:
- Merge sorted arrays
- Merge sorted lists
- Intersection of arrays

## Completed Examples

### Example 1: Two Sum (Sorted Array)
**File**: `TwoPointers/TwoSumSorted.swift`

**Problem**: Find two numbers that sum to target

**Approach**:
- Pointers at start and end
- If sum too small, move left pointer right
- If sum too large, move right pointer left
- If sum matches, return indices

**Time**: O(n), **Space**: O(1)

---

### Example 2: Move Zeros to End
**File**: `TwoPointers/MoveZeroesToEnd.swift`

**Problem**: Move all zeros to end, maintain relative order

**Approach**:
- Slow pointer for next non-zero position
- Fast pointer finds non-zero elements
- Swap non-zero with position at slow pointer

**Time**: O(n), **Space**: O(1)

---

### Example 3: Container With Most Water
**File**: `TwoPointers/ContainerWithMostWater.swift`

**Problem**: Find two lines forming container with max area

**Approach**:
- Start with widest container
- Area = width × min(height1, height2)
- Move pointer pointing to shorter line inward
- Greedy: only moving shorter line can increase area

**Time**: O(n), **Space**: O(1)

---

### Example 4: Find Duplicate
**File**: `TwoPointers/FindDuplicate.swift`

**Problem**: Find duplicate in array without modifying it

**Approach**:
- Treat array as linked list (value → next index)
- Use fast/slow pointers to detect cycle
- Find cycle start (duplicate)

**Time**: O(n), **Space**: O(1)

---

## Common Two Pointer Problems

**Sorted Array Focus**:
1. Two Sum II (Input array is sorted)
2. Valid Palindrome
3. 3Sum, 4Sum
4. Trapping Rain Water
5. Sort Colors (partition)

**Duplicate/Element Removal**:
1. Remove Duplicates from Sorted Array
2. Remove Element
3. Move Zeros to End
4. Dutch National Flag Problem
5. Sort Array by Parity

**Merging/Intersection**:
1. Merge Two Sorted Lists
2. Merge Two Sorted Arrays
3. Intersection of Two Arrays
4. Union of Two Arrays

**Container/Window**:
1. Container With Most Water
2. Best Time to Buy and Sell Stock
3. Trapping Rain Water

## When to Use Two Pointers

✅ **Use When**:
- Need to avoid nested loops (O(n²) to O(n))
- Require in-place modifications
- Array/string is sorted or can be sorted
- Need to find pairs/subarrays with specific properties
- Detecting cycles in linked lists

❌ **Don't Use When**:
- Need all pairs (not just specific ones)
- Problem doesn't have sorted nature
- In-place modification not allowed/needed

## Interview Tips

✅ **Common Scenarios**:
1. **Sorted Array** → Check if two pointers apply
2. **"Without Extra Space"** → Often two pointers
3. **"Reverse"** → Usually two pointers from ends
4. **"Partition"** → Same direction two pointers
5. **"Remove/Move"** → Slow/fast pointer variant

✅ **Implementation Checklist**:
- [ ] Identify pointer movement strategy
- [ ] Define stopping condition
- [ ] Define update condition for each pointer
- [ ] Handle edge cases
- [ ] Verify in-place modification if required

✅ **Optimization Opportunity**:
If you see nested loop, ask: "Can two pointers solve this?"

## Edge Cases

- Empty array
- Single element
- All same elements
- All different elements
- Duplicates throughout array
- Large values/small values

## Testing

Tests in `Tests/DSA-SwiftTests/`:
- Basic functionality tests
- Edge case validation
- Performance on large arrays

## Complexity Analysis

| Problem | Time | Space | Notes |
| ------- | ---- | ----- | ----- |
| Opposite Direction | O(n) | O(1) | Usually for sorted |
| Same Direction | O(n) | O(1) | Single pass required |
| Two Arrays | O(n+m) | O(1) or O(n) | Depends on result storage |

## Comparison with Other Patterns

| Pattern | Use Case | Time | Space |
| ------- | -------- | ---- | ----- |
| Two Pointers | Sorted arrays, pairs | O(n) | O(1) |
| Sliding Window | Subarrays, window | O(n) | O(charset) |
| Hash Map | Counting, lookup | O(n) | O(n) |
| Binary Search | Sorted, search | O(log n) | O(1) |

## Related Patterns

- **Sliding Window** - Different use case, similar efficiency
- **Binary Search** - Often precedes two pointers
- **Sorting** - Often required before two pointers
- **Fast-Slow Pointers** - Specialized two pointer variant for cycles

## Further Reading

- LeetCode: Two Pointers problems
- GeeksforGeeks: Two Pointer Technique
- AlgoExpert: Two Pointer patterns
