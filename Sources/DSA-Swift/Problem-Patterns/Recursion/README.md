# Recursion Pattern

Break problems into smaller subproblems solved through recursive calls.

## Overview

Recursion is fundamental for many data structure operations and algorithms.

| Problem Type | Key Idea | Difficulty | Status |
| ------------ | -------- | ---------- | ------ |
| Tree Traversal | Traverse entire tree structure | ⭐ | Not Started |
| Tree Problems | Queries/modifications on trees | ⭐⭐ | Not Started |
| Graph Traversal | DFS, explore paths | ⭐⭐ | Not Started |
| Divide-and-Conquer | Break into subproblems | ⭐⭐ | Not Started |
| Recursion + Memoization | DP top-down approach | ⭐⭐ | Not Started |

## Recursion Basics

### Three Essential Components

1. **Base Case**: When to stop recursing
2. **Recursive Case**: How to break problem down
3. **Progress**: Ensure we're moving toward base case

**Template**:
```swift
func recurse(_ n: Int) -> Result {
    // Base case
    if n == 0 {
        return baseValue
    }
    
    // Recursive case
    return f(n) + recurse(n - 1)
}
```

### Two Recursion Types

#### 1. Linear Recursion
Single recursive call, linear chain of calls.

```swift
func factorial(_ n: Int) -> Int {
    if n == 0 { return 1 }
    return n * factorial(n - 1)
}
```

#### 2. Binary Recursion
Two recursive calls, creates binary tree of calls.

```swift
func fibonacci(_ n: Int) -> Int {
    if n <= 1 { return n }
    return fibonacci(n - 1) + fibonacci(n - 2)
}
```

## Common Recursion Problems

### Array/List Problems
1. **Search in Array** - Linear or binary search
2. **Reverse Array** - Recursively reverse elements
3. **Sum Array** - Sum all elements
4. **Find Max** - Find maximum value

### Tree Problems
1. **Traversals** - Preorder, inorder, postorder
2. **Height** - Find tree height
3. **Balanced** - Check if balanced
4. **Path Sum** - Find root-to-leaf paths
5. **LCA** - Lowest common ancestor

### Graph Problems
1. **DFS** - Depth-first search
2. **Connected Components** - Find all components
3. **Path Finding** - Find path between nodes
4. **Cycle Detection** - Detect cycles in graphs

## Interview Tips

✅ **Recursion Recognition**:
- Tree/graph traversal → Recursion natural fit
- "All paths" / "All solutions" → Consider recursion
- "Divide and conquer" → Recursion likely
- Hierarchical data → Often recursive

✅ **Key Considerations**:
- **Base case**: Must be clear and reachable
- **Progress**: Ensure moving toward base case
- **Stack space**: Recursion depth matters
- **Time complexity**: Count total calls, not depth
- **Memoization**: Cache repeated subproblems

✅ **Optimization**:
- Use memoization for overlapping subproblems
- Consider tail recursion optimization
- Convert to iteration if needed (stack-based)

## Complexity Analysis

| Problem | Time | Space |
| ------- | ---- | ----- |
| Factorial | O(n) | O(n) recursive stack |
| Fibonacci (naive) | O(2^n) | O(n) recursive stack |
| Fibonacci (memo) | O(n) | O(n) memo + O(n) stack |
| Tree traversal | O(n) | O(h) h=height |
| DFS | O(V+E) | O(V) recursion stack |

## Common Pitfalls

❌ **Missing Base Case** - Infinite recursion
❌ **Wrong Base Case** - Off-by-one errors
❌ **No Progress** - Same parameters in recursive call
❌ **Stack Overflow** - Too deep recursion
❌ **Inefficiency** - Recomputing same subproblems

## Learning Path

1. **Simple Recursion**: Factorial, Fibonacci
2. **Tree Recursion**: Tree traversals, tree queries
3. **Graph Recursion**: DFS, path finding
4. **Advanced**: Recursion + DP, complex problems

## Testing

Tests coming soon in `Tests/DSA-SwiftTests/`

## Key Differences from Iteration

| Aspect | Recursion | Iteration |
| ------ | --------- | --------- |
| Code clarity | Often cleaner for trees/graphs | May be clearer for arrays |
| Space | O(depth) recursion stack | O(1) or explicit stack |
| Debugging | Harder (many stack frames) | Easier to step through |
| Performance | Can be slower | Usually faster |
| Natural fit | Trees/graphs | Arrays/linear |

## Resources

- "Introduction to Algorithms" - Recursion section
- "Thinking Recursively" book
- LeetCode: Recursion-II problems
- GeeksforGeeks: Recursion tutorials
