# Algorithms

This section covers core algorithmic techniques and strategies.

## Overview

### Sorting Algorithms

| Algorithm      | Best Case   | Average Case | Worst Case  | Space       | Status          | Location                          |
| -------------- | ----------- | ------------ | ----------- | ----------- | --------------- | --------------------------------- |
| Bubble Sort    | O(n)        | O(n²)        | O(n²)       | O(1)        | ✅ Complete     | `Sorting/BubbleSort/`             |
| Selection Sort | O(n²)       | O(n²)        | O(n²)       | O(1)        | ✅ Complete     | `Sorting/SelectionSort/`          |
| Insertion Sort | O(n)        | O(n²)        | O(n²)       | O(1)        | ✅ Complete     | `Sorting/SelectionSort/`          |
| Merge Sort     | O(n log n)  | O(n log n)   | O(n log n)  | O(n)        | Not Started     | `Sorting/MergeSort/`              |
| Quick Sort     | O(n log n)  | O(n log n)   | O(n²)       | O(log n)    | Not Started     | `Sorting/QuickSort/`              |

### Searching Algorithms

| Algorithm      | Best Case   | Average Case | Worst Case  | Status      | Location      |
| -------------- | ----------- | ------------ | ----------- | ----------- | ------------- |
| Linear Search  | O(1)        | O(n)         | O(n)        | ✅ Complete | (in Array)    |
| Binary Search  | O(1)        | O(log n)     | O(log n)    | ✅ Complete | `Searching/`  |

### Advanced Algorithms

| Topic                | Status      | Location                |
| -------------------- | ----------- | ----------------------- |
| Greedy Algorithms    | Not Started | `Greedy/`               |
| Dynamic Programming  | Not Started | `DynamicProgramming/`   |

## Learning Path

1. **Sorting** - Start with simple sorts, understand optimizations
   - Understand: comparisons, stability, in-place requirements
   - Compare: time/space tradeoffs between algorithms

2. **Searching** - Master binary search and its variations
   - Understand: prerequisites (sorted data), boundary conditions
   - Practice: variations and modifications

3. **Greedy** - Learn optimization through greedy choices
   - Understand: greedy choice property, optimal substructure
   - Identify: when greedy works vs. when it fails

4. **Dynamic Programming** - Master optimization through subproblems
   - Understand: overlapping subproblems, memoization
   - Learn: tabulation approach for efficiency

## Implementation Guidelines

Each algorithm includes:
- **Core Implementation** - Clean, readable code
- **Complexity Analysis** - Time and space analysis
- **Example Usage** - Clear examples with output
- **Interview Tips** - Common variations and optimizations
- **Edge Cases** - Boundary conditions and special cases

## Quick Reference

### When to Use Each Sort

- **Bubble Sort**: Educational purposes, nearly sorted arrays
- **Selection Sort**: When memory writes are expensive
- **Insertion Sort**: Small arrays, nearly sorted data (used in Java's Arrays.sort)
- **Merge Sort**: When stability matters, consistent O(n log n)
- **Quick Sort**: Average case performance, practical sorting

## Testing

```bash
swift test
```

See `Tests/DSA-SwiftTests/` for comprehensive test coverage including:
- Correctness tests
- Edge case validation
- Performance comparisons
