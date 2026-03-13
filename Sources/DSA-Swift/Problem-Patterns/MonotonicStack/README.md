# Monotonic Stack Pattern

Efficiently solve problems involving next/previous greater elements and histogram problems.

## Overview

A monotonic stack maintains elements in a specific order (increasing or decreasing) for efficient range queries.

| Problem Type | Key Idea | Difficulty | Status |
| ------------ | -------- | ---------- | ------ |
| Next Greater Element | Find next larger element | ⭐⭐ | Not Started |
| Largest Rectangle | Maximum rectangle in histogram | ⭐⭐⭐ | Not Started |
| Daily Temperatures | Days until warmer temperature | ⭐⭐ | Not Started |
| Trapping Rain Water | Water trapped between bars | ⭐⭐⭐ | Not Started |
| Stock Span | Stock spans calculation | ⭐⭐ | Not Started |

## How It Works

### Increasing Monotonic Stack

Maintain stack in increasing order. When new element breaks order, pop elements.

**Template**:
```swift
var stack = [Int]()  // Store indices or values

for i in 0..<array.count {
    // Pop while current element is greater than stack top
    while !stack.isEmpty && array[stack.last!] < array[i] {
        let idx = stack.removeLast()
        // Process: found next greater element for idx
        result[idx] = array[i]
    }
    stack.append(i)
}

// Remaining elements have no next greater
while !stack.isEmpty {
    let idx = stack.removeLast()
    result[idx] = -1
}
```

### Decreasing Monotonic Stack

Maintain stack in decreasing order.

```swift
while !stack.isEmpty && array[stack.last!] > array[i] {
    let idx = stack.removeLast()
    // Process popped element
}
```

## Common Problems

### 1. Next Greater Element
**Problem**: For each element, find the next greater element to its right

**Approach**: 
- Use increasing monotonic stack
- When element pops, new element is its next greater

**Time**: O(n), **Space**: O(n)

### 2. Daily Temperatures
**Problem**: How many days until warmer temperature?

**Approach**:
- Same as next greater element
- Store days in result array

**Time**: O(n), **Space**: O(n)

### 3. Largest Rectangle in Histogram
**Problem**: Find largest rectangle in histogram

**Approach**:
- Use monotonic stack to track heights
- When height decreases, pop and calculate areas
- Store indices to calculate widths

**Time**: O(n), **Space**: O(n)

### 4. Trapping Rain Water
**Problem**: Calculate water trapped between bars

**Approach 1 (Monotonic Stack)**:
- Track decreasing indices
- When bar taller than stack top, calculate water
- Water depends on bar heights and distance

**Time**: O(n), **Space**: O(n)

**Approach 2 (Two Pointers)**:
- Track min of left/right max heights
- Calculate water as difference
- More intuitive than monotonic stack

**Time**: O(n), **Space**: O(1)

## Interview Tips

✅ **Monotonic Stack Recognition**:
- "Next greater/smaller element" → Monotonic stack
- "Largest rectangle" → Monotonic stack likely
- "Stock span problems" → Monotonic stack
- Arrays need to be processed once → Monotonic stack

✅ **Key Insight**:
Monotonic stack lets you find next/previous element efficiently:
- Without stack: O(n²) nested loops
- With stack: O(n) single pass

✅ **Common Mistakes**:
- Stack stores indices not values
- Not handling remaining stack elements
- Wrong comparison operator (< vs >)
- Forgetting to process on pop vs push

## Complexity Analysis

| Problem | Time | Space |
| ------- | ---- | ----- |
| Next Greater | O(n) | O(n) |
| Largest Rectangle | O(n) | O(n) |
| Daily Temperatures | O(n) | O(n) |
| Trapping Rain | O(n) | O(n) stack or O(1) two pointers |

**Why O(n) not O(n²)**:
- Each element pushed once, popped once
- Total operations = 2n = O(n)

## Example: Next Greater Element

```swift
func nextGreaterElement(_ nums: [Int]) -> [Int] {
    var result = Array(repeating: -1, count: nums.count)
    var stack = [Int]()
    
    for i in 0..<nums.count {
        // Pop while current is greater
        while !stack.isEmpty && nums[stack.last!] < nums[i] {
            let idx = stack.removeLast()
            result[idx] = nums[i]
        }
        stack.append(i)
    }
    
    return result
}
```

## Key Differences

| Method | Time | Space | Best For |
| ------ | ---- | ----- | -------- |
| Monotonic Stack | O(n) | O(n) | Next/previous, general |
| Two Pointers | O(n) | O(1) | Water trapping specifically |
| Brute Force | O(n²) | O(1) | Small inputs, education |

## Variant: Previous Greater/Smaller

Same approach, iterate from right to left instead:

```swift
// For previous greater element
for i in (0..<array.count-1).reversed() {
    while !stack.isEmpty && array[stack.last!] < array[i] {
        let idx = stack.removeLast()
        result[idx] = array[i]
    }
    stack.append(i)
}
```

## Learning Path

1. **Next Greater Element**: Simplest monotonic stack problem
2. **Daily Temperatures**: Variation of next greater
3. **Largest Rectangle**: More complex stack usage
4. **Trapping Rain Water**: Compare with two pointers

## Testing

Tests coming soon in `Tests/DSA-SwiftTests/`

## Related Patterns

- **Two Pointers** - Alternative for some problems
- **Prefix Sum** - Sometimes combined
- **Stack** - Data structure used
- **Greedy** - Some optimization related

## Resources

- LeetCode: Monotonic Stack problems
- GeeksforGeeks: Monotonic Stack
- "Introduction to Algorithms" - Stack applications
