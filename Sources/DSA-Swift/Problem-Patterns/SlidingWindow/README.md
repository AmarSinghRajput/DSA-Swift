# Sliding Window Pattern

Efficient technique for solving subarray/substring problems with fixed or variable window size.

## Overview

| Problem Type | Window Type | Key Technique | Status |
| ------------ | ----------- | ------------- | ------ |
| Fixed Window Size | Fixed | Calculate initial window, slide | ✅ Done |
| Variable Window Size | Variable | Two pointers, expand/contract | ✅ Done |
| Character Matching | Variable | Hash map for character counts | ✅ Done |

## Pattern Explanation

The sliding window pattern works by maintaining a window of elements and sliding it through the data structure.

**Two Variants**:

### 1. Fixed Window Size
- Window size is fixed (e.g., k)
- Slide from start to end
- Recalculate value for each position
- Time: O(n)

**Template**:
```swift
var left = 0
var right = k - 1

// Calculate initial window
var windowValue = calculateWindow(arr, 0, k-1)
var maxValue = windowValue

// Slide window
while right < arr.count - 1 {
    // Remove left element, add right element
    windowValue = windowValue - arr[left] + arr[right + 1]
    maxValue = max(maxValue, windowValue)
    left += 1
    right += 1
}
```

### 2. Variable Window Size
- Window size varies based on condition
- Expand right pointer to include more elements
- Shrink left pointer when condition violated
- Time: O(n)

**Template**:
```swift
var left = 0
var result = 0

// Process with right pointer
for right in 0..<arr.count {
    // Expand window with arr[right]
    
    // Shrink while condition violated
    while isConditionViolated() {
        // Remove arr[left]
        left += 1
    }
    
    // Update result
    result = max(result, right - left + 1)
}
```

## Completed Examples

### Example 1: Longest Substring Without Repeating Characters
**File**: `SlidingWindow/NonRepeatingLongestSubstring.swift`

**Problem**: Find length of longest substring without repeating characters

**Approach**:
- Use hash map to track character frequencies
- Expand right pointer, add characters
- When duplicate found, shrink from left
- Track maximum window size

**Time**: O(n), **Space**: O(min(n, charset))

---

## Common Sliding Window Problems

1. **Longest Substring Without Repeating Characters** ✅
2. **Longest Substring with At Most K Distinct Characters**
3. **Maximum Sum Subarray of Size K**
4. **Minimum Window Substring**
5. **Permutation in String**
6. **Fruit Into Baskets**
7. **Longest Repeating Character Replacement**
8. **Max Consecutive Ones III**

## When to Use Sliding Window

✅ **Use When**:
- Problem involves subarrays/substrings
- Finding longest/shortest valid sequence
- Optimizing nested loops to single pass
- Characters/values frequency in window matters

❌ **Don't Use When**:
- Need all subarrays (not just one)
- Window condition is complex
- Data structure not sequential

## Interview Tips

✅ **Common Patterns**:
1. **Count Pattern**: "How many subarrays have property X?"
2. **Maximum Pattern**: "Find longest/largest subarray with property X"
3. **Minimum Pattern**: "Find shortest/smallest subarray with property X"
4. **Matching Pattern**: "Find if pattern exists in string"

✅ **Implementation Checklist**:
- [ ] Identify window variable(s)
- [ ] Define condition for expanding
- [ ] Define condition for shrinking
- [ ] Decide what to track (max, min, count)
- [ ] Test edge cases

✅ **Optimization**:
- Use hash map for O(1) lookups
- Use array for known range (0-26 for lowercase letters)
- Early termination when possible

## Edge Cases

- Empty string/array
- Single character
- All same characters
- All different characters
- Window size larger than array

## Testing

Tests in `Tests/DSA-SwiftTests/NonRepeatingLongestSubstringTests.swift`:
- Basic functionality
- Edge cases
- Performance on large inputs

## Complexity Analysis

| Variant | Time | Space | Notes |
| ------- | ---- | ----- | ----- |
| Fixed Window | O(n) | O(1) or O(k) | Depends on calculation |
| Variable Window | O(n) | O(charset) or O(k) | Usually uses hash map |

Each element visited at most twice (once by right, once by left pointer).

## Related Patterns

- **Two Pointers** - Similar but more explicit pointer movement
- **Prefix Sum** - For aggregate calculations
- **Hash Map** - For character/element frequencies

## Further Reading

- LeetCode: Sliding Window problems
- GeeksforGeeks: Sliding Window Technique
- "Introduction to Algorithms" - String algorithms chapter
