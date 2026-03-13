# Sorting Algorithms

Comprehensive implementations of sorting algorithms with detailed explanations and complexity analysis.

## Overview

| Algorithm      | Best   | Average | Worst  | Space   | Stable | In-Place | Status      |
| -------------- | ------ | ------- | ------ | ------- | ------ | -------- | ----------- |
| Bubble Sort    | O(n)   | O(n²)   | O(n²)  | O(1)    | Yes    | Yes      | ✅ Complete |
| Selection Sort | O(n²)  | O(n²)   | O(n²)  | O(1)    | No     | Yes      | ✅ Complete |
| Insertion Sort | O(n)   | O(n²)   | O(n²)  | O(1)    | Yes    | Yes      | ✅ Complete |
| Merge Sort     | O(n log n) | O(n log n) | O(n log n) | O(n) | Yes | No | Not Started |
| Quick Sort     | O(n log n) | O(n log n) | O(n²) | O(log n) | No | Yes | Not Started |

## Completed Implementations

### Bubble Sort
**File**: `BubbleSort/BubbleSort.swift`

**How It Works**: Repeatedly steps through the array, compares adjacent elements, and swaps them if they're in wrong order.

**Key Characteristics**:
- Simple to understand and implement
- Poor performance on large datasets
- Stable sort (preserves relative order of equal elements)
- In-place sort (requires minimal extra space)

**Best For**: 
- Educational purposes
- Nearly sorted arrays
- Small datasets

**Code**:
```swift
// See BubbleSort/BubbleSort.swift for implementation
```

---

### Selection Sort
**File**: `SelectionSort/SelectionSort.swift`

**How It Works**: Divides array into sorted and unsorted portions. Repeatedly finds minimum element from unsorted portion and places it at beginning.

**Key Characteristics**:
- Simple implementation
- O(n) comparisons even in best case
- Not stable
- In-place sort
- Minimizes memory writes (useful for expensive write operations)

**Best For**:
- When memory writes are expensive
- Small datasets
- When O(n²) is acceptable

---

### Insertion Sort
**File**: `InsertionSort/InsertionSort.swift`

**How It Works**: Builds final sorted array one item at a time. Iterates through array and inserts each element into correct position in sorted portion.

**Key Characteristics**:
- Efficient for small arrays
- Stable sort
- In-place sort
- Better performance on nearly sorted data
- Used internally in Java's `Arrays.sort()` for small subarrays

**Best For**:
- Small arrays (< 50 elements)
- Nearly sorted data
- When stability matters

---

## Not Started

### Merge Sort
**Planned File**: `MergeSort/MergeSort.swift`

- Divide-and-conquer approach
- Guaranteed O(n log n) time complexity
- Stable sort
- Requires O(n) extra space
- Great for linked lists and external sorting

### Quick Sort
**Planned File**: `QuickSort/QuickSort.swift`

- Divide-and-conquer approach
- Average O(n log n), worst O(n²)
- In-place sort (O(log n) extra space for recursion)
- Often faster than merge sort in practice
- Widely used in standard libraries

## How to Use

### Run Sorting Algorithm
```swift
import DSA_Swift

let array = [5, 2, 8, 1, 9]
BubbleSort.sort(&array)
print(array) // [1, 2, 5, 8, 9]
```

### Comparison Operations
All sorting algorithms support:
- Default comparison (for Comparable types)
- Custom comparator functions

## Complexity Analysis

### Time Complexity
- **Best Case**: When data is already sorted or nearly sorted
  - Bubble/Insertion: O(n)
  - Others: O(n log n)

- **Average Case**: Random data
  - Bubble/Selection/Insertion: O(n²)
  - Merge/Quick: O(n log n)

- **Worst Case**: Reverse sorted data
  - Bubble/Selection/Insertion: O(n²)
  - Quick: O(n²) (with poor pivot)
  - Merge: O(n log n)

### Space Complexity
- Bubble/Selection/Insertion: O(1) - in-place
- Merge Sort: O(n) - needs extra space
- Quick Sort: O(log n) - recursion stack

## Stability

**Stable Sorts** (preserve order of equal elements):
- Bubble Sort ✅
- Insertion Sort ✅
- Merge Sort ✅

**Unstable Sorts** (may change order of equal elements):
- Selection Sort ❌
- Quick Sort ❌

## Interview Tips

1. **Know the Basics**
   - Understand how each algorithm works
   - Know time/space complexity
   - Know when each is appropriate

2. **Implementation**
   - Can write at least 2-3 from memory
   - Handle edge cases (empty, single element)
   - Write clean, readable code

3. **Comparisons**
   - Why merge sort over quick sort?
   - Why insertion sort for small arrays?
   - When does stability matter?

4. **Optimizations**
   - Hybrid approaches (Tim Sort in Python)
   - Pivot selection in Quick Sort
   - Early termination in Bubble Sort

## Testing

All sorting algorithms are tested in `Tests/DSA-SwiftTests/`:
- Basic functionality
- Edge cases (empty, single element, duplicates)
- Reverse sorted arrays
- Already sorted arrays
- Large arrays

Run tests:
```bash
swift test
```

## Further Reading

- "Introduction to Algorithms" by CLRS
- "The Art of Computer Programming" by Knuth
- LeetCode Sorting Problems
