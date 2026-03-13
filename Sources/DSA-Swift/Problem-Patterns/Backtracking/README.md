# Backtracking Pattern

Systematically explore all possibilities, pruning branches that cannot lead to valid solutions.

## Overview

Backtracking is used for problems where you need to explore all possible solutions and constraint validation happens during exploration.

| Problem Type | Key Idea | Difficulty | Status |
| ------------ | -------- | ---------- | ------ |
| Permutations | Generate all orderings | ⭐⭐ | Not Started |
| Combinations | Generate all selections | ⭐⭐ | Not Started |
| Subset Problems | Find valid subsets | ⭐⭐ | Not Started |
| Constraint Problems | N-Queens, Sudoku | ⭐⭐⭐ | Not Started |
| String Problems | Palindrome partitions | ⭐⭐ | Not Started |

## Pattern Explanation

Backtracking explores solution space by:
1. **Choosing** - Make a choice
2. **Exploring** - Recursively solve subproblem
3. **Unchoosing** - Undo choice (backtrack) if not valid

**General Template**:
```swift
func backtrack(_ choices: [T], _ path: [T]) {
    // Base case: found solution
    if isComplete(path) {
        result.append(path)
        return
    }
    
    // Try all choices
    for choice in choices {
        if isValid(choice, path) {
            path.append(choice)
            
            // Explore
            backtrack(remainingChoices(choices, choice), path)
            
            // Backtrack
            path.removeLast()
        }
    }
}
```

## When to Use Backtracking

✅ **Use When**:
- Need to find all solutions
- Problem has constraints to validate
- Solution is sequential (ordered)
- Can prune invalid branches early
- Search space is manageable (not too large)

❌ **Don't Use When**:
- Need single solution (use greedy/DP)
- Search space is huge
- No clear constraints to prune

## Common Backtracking Problems

1. **Permutations** - All orderings of n elements
2. **Combinations** - All selections of k from n
3. **N-Queens** - Place n queens on board
4. **Sudoku Solver** - Fill grid with constraints
5. **Word Search** - Find word in grid
6. **Palindrome Partitions** - Partition string into palindromes
7. **Generate Parentheses** - Valid parentheses combinations
8. **Subsets** - All subsets of a set

## Interview Tips

✅ **Backtracking Recognition**:
- "Find all..." / "Generate all..."
- "Valid combinations of..." 
- "All possible ways..."
- Constraint-based problems

✅ **Key Optimizations**:
- Prune early (check constraints before recursing)
- Sort if beneficial
- Avoid duplicates (track used elements)
- Use bitmask for optimization if needed

✅ **Common Mistakes**:
- Not backtracking properly (removing choice)
- Missing base case
- Inefficient pruning
- Creating new list instead of modifying

## Complexity Analysis

| Problem | Time | Space | Notes |
| ------- | ---- | ----- | ----- |
| Permutations | O(n × n!) | O(n) | Recursion depth |
| Combinations | O(C(n,k) × k) | O(k) | Depends on k |
| N-Queens | O(n!) | O(n) | Highly pruned |

## Learning Path

1. **Start Simple**: Permutations, combinations
2. **Add Constraints**: Unique elements, subsets
3. **Complex Constraints**: N-Queens, Sudoku
4. **String Problems**: Partitions, word search

## Testing

Tests coming soon in `Tests/DSA-SwiftTests/`

## Resources

- "Introduction to Algorithms" - Backtracking section
- LeetCode Explore: Backtracking
- GeeksforGeeks: Backtracking
