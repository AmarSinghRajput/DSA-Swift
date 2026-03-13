# Searching Algorithms

Efficient searching techniques for finding elements in data structures.

## Overview

| Algorithm      | Prerequisite    | Time       | Space   | Status      |
| -------------- | --------------- | ---------- | ------- | ----------- |
| Linear Search  | None            | O(n)       | O(1)    | ✅ Complete |
| Binary Search  | Sorted Array    | O(log n)   | O(1)    | ✅ Complete |

## Completed Implementations

### Binary Search
**File**: `BinarySearch.swift`

**Prerequisites**: 
- Array must be **sorted**
- Comparable elements

**How It Works**: Divides sorted array in half repeatedly, eliminating half the remaining elements with each comparison.

**Key Characteristics**:
- Dramatically faster than linear search for large arrays
- Logarithmic time complexity
- Only works on sorted data
- Simple implementation with easy mistakes

**When to Use**:
- Searching sorted arrays
- Range queries
- Finding insertion positions
- Variants: find first, find last, find boundary

**Common Variations**:
1. **Find Target**: Standard binary search
2. **Find First Occurrence**: Target with duplicates
3. **Find Last Occurrence**: Target with duplicates
4. **Find Insertion Position**: Where element should go
5. **Find Peak**: In mountain array
6. **Find Rotated Position**: In rotated sorted array

**Code Example**:
```swift
// See BinarySearch.swift for complete implementation
let array = [1, 3, 5, 7, 9, 11, 13]
if let index = BinarySearch.search(array, target: 7) {
    print("Found at index: \(index)") // Index: 3
}
```

**Time Complexity**: O(log n)
**Space Complexity**: O(1) iterative, O(log n) recursive

---

## Linear Search (for comparison)

**How It Works**: Scans array sequentially until finding target.

**When to Use**:
- Unsorted arrays
- Small arrays
- When data is not sortable
- First occurrence needed immediately

**Time Complexity**: O(n)
**Space Complexity**: O(1)

---

## Binary Search Problem Patterns

### Pattern 1: Classic Binary Search
Find if a target exists in sorted array
```
Template: left = 0, right = n-1
While left <= right:
  mid = (left + right) / 2
  if arr[mid] == target: return mid
  elif arr[mid] < target: left = mid + 1
  else: right = mid - 1
return -1
```

### Pattern 2: Find First Occurrence
Find first position of target in sorted array with duplicates
```
Similar to classic, but continue searching left even after found
```

### Pattern 3: Find Last Occurrence
Find last position of target in sorted array with duplicates
```
Similar to classic, but continue searching right even after found
```

### Pattern 4: Find Boundary
Find transition point in array
```
Example: [false, false, true, true]
Find first true or last false
```

### Pattern 5: Rotated Sorted Array
Array is sorted but rotated
```
Example: [4, 5, 6, 7, 0, 1, 2]
Determine which half is sorted, recurse on the other
```

---

## Interview Tips

✅ **Common Mistakes**:
1. Integer overflow: Use `mid = left + (right - left) / 2`
2. Off-by-one errors: Test boundary conditions
3. Infinite loops: Ensure left/right converge
4. Wrong comparison: Check `<=` vs `<` for while loop

✅ **Practice These Variations**:
- Search in sorted array
- Find first position of target
- Find last position of target
- Search in rotated sorted array
- Find peak element
- Find minimum in rotated sorted array
- Search for a range

✅ **When You See "Sorted Array"**:
Usually means binary search or binary search variant!

✅ **Time Complexity Hint**:
If O(log n) is required, probably binary search

---

## Complexity Analysis

| Operation              | Time       | Space   |
| ---------------------- | ---------- | ------- |
| Search sorted array    | O(log n)   | O(1)    |
| Search unsorted array  | O(n)       | O(1)    |
| Insert in sorted array | O(n)       | O(n)    |
| Delete from array      | O(n)       | O(1)    |

**Why Binary Search is Powerful**:
- n = 1,000,000: Linear search = 1M ops, Binary search = ~20 ops
- n = 1,000,000,000: Linear = 1B ops, Binary = ~30 ops

---

## Testing

Binary search is tested in `Tests/DSA-SwiftTests/BinarySearchTests.swift`:
- Target found at various positions
- Target not in array
- Edge cases (empty, single element)
- Duplicates
- Boundary conditions

Run tests:
```bash
swift test
```

---

## Related Problem Patterns

These patterns often use binary search:
- **Two Pointers** - With sorted arrays
- **Prefix Sum** - With sorted values
- **Sliding Window** - Finding boundaries

---

## Further Reading

- "Introduction to Algorithms" - Chapter 12
- LeetCode Explore Cards: Binary Search
- GeeksforGeeks: Binary Search tutorials
