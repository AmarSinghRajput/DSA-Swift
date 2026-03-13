# Problem Patterns

This section covers reusable problem-solving patterns that apply across many interview problems.

## Overview

Problem patterns are techniques that help you recognize and solve similar problems efficiently. Master these patterns and you'll be able to tackle a wide variety of interview questions.

| Pattern            | Key Use Cases                                  | Difficulty | Status      | Location                    |
| ------------------ | ---------------------------------------------- | ---------- | ----------- | --------------------------- |
| Sliding Window     | Subarray/substring, window optimization        | ⭐⭐       | ✅ Complete | `SlidingWindow/`            |
| Two Pointers       | Array/string manipulation, pair finding        | ⭐⭐       | 🔄 Ongoing  | `TwoPointers/`              |
| Backtracking       | Combinations, permutations, constraint solving | ⭐⭐⭐     | Not Started | `Backtracking/`             |
| Recursion          | Tree/graph traversal, divide-and-conquer       | ⭐⭐       | Not Started | `Recursion/`                |
| Fast-Slow Pointers | Cycle detection, linked list manipulation      | ⭐⭐       | Not Started | `FastSlowPointers/`         |
| Prefix Sum         | Range sum queries, cumulative operations       | ⭐⭐       | Not Started | `PrefixSum/`                |
| Monotonic Stack    | Next/previous element, stock problems          | ⭐⭐       | Not Started | `MonotonicStack/`           |

## Pattern Details

### 1. Sliding Window
**When to Use**: Problems involving contiguous subarrays/substrings

**Key Idea**: Maintain a window that slides through the data structure

**Example Problems**:
- Maximum sum subarray of size k
- Longest substring without repeating characters
- Minimum window substring
- Fruit Into Baskets

**Complexity**: Usually O(n) time, O(1) or O(k) space

**Status**: ✅ Complete with examples in `SlidingWindow/`

---

### 2. Two Pointers
**When to Use**: Array/string problems, often with sorted data

**Key Idea**: Use two pointers to efficiently traverse and compare elements

**Example Problems**:
- Two Sum (sorted array)
- Container With Most Water
- Move Zeros to End
- 3Sum, 4Sum
- Trapping Rain Water

**Complexity**: Usually O(n) time, O(1) space

**Status**: 🔄 Ongoing with examples in `TwoPointers/`

---

### 3. Backtracking
**When to Use**: Finding all combinations, permutations, or constrained solutions

**Key Idea**: Explore all possibilities, backtrack when constraints violated

**Example Problems**:
- N-Queens
- Permutations/Combinations
- Sudoku Solver
- Word Search
- Letter Combinations of Phone Number

**Complexity**: Exponential time, O(h) space for recursion stack

**Status**: Not Started

---

### 4. Recursion
**When to Use**: Tree/graph problems, problems with recursive substructure

**Key Idea**: Break problem into smaller subproblems

**Example Problems**:
- Tree traversals (preorder, inorder, postorder)
- Binary tree path sum
- Number of paths in matrix
- Fibonacci (with memoization)

**Complexity**: Varies by problem

**Status**: Not Started

---

### 5. Fast-Slow Pointers
**When to Use**: Cycle detection, finding middle elements, linked list problems

**Key Idea**: Use two pointers moving at different speeds

**Example Problems**:
- Linked list cycle detection
- Find middle of linked list
- Happy number
- Start of cycle

**Complexity**: O(n) time, O(1) space

**Status**: Not Started

---

### 6. Prefix Sum
**When to Use**: Range sum queries, cumulative calculations

**Key Idea**: Precompute cumulative sums for efficient range queries

**Example Problems**:
- Range sum query
- Subarray sum equals k
- Contiguous array
- Maximum subarray

**Complexity**: O(n) preprocessing, O(1) per query

**Status**: Not Started

---

### 7. Monotonic Stack
**When to Use**: Next/previous element problems, daily temperatures, stock problems

**Key Idea**: Maintain stack in monotonic order for efficient queries

**Example Problems**:
- Daily Temperatures
- Next Greater Element
- Largest Rectangle in Histogram
- Trapping Rain Water II

**Complexity**: O(n) time, O(n) space

**Status**: Not Started

## Learning Strategy

1. **Understand the Pattern** - Read through the pattern explanation
2. **Study Examples** - Review provided problem solutions
3. **Implement Variations** - Try modifying the examples
4. **Solve Practice Problems** - Apply to new problems
5. **Master Edge Cases** - Handle boundary conditions
6. **Optimize Code** - Refactor for clarity and efficiency

## Tips for Interview Success

✅ **Recognize the Pattern** - Identify which pattern applies in 2-3 minutes

✅ **Explain Clearly** - Walk through your approach before coding

✅ **Handle Edge Cases** - Consider empty arrays, single elements, etc.

✅ **Optimize Iteratively** - Start with brute force, improve step by step

✅ **Test Thoroughly** - Verify with multiple test cases

## Testing

```bash
swift test
```

Tests are located in `Tests/DSA-SwiftTests/` covering:
- Correctness validation
- Edge cases
- Performance verification
