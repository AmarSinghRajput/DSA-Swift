# Sorting

Sorting algorithms arrange elements in ascending or descending order.
They are fundamental for searching, optimization, and many interview problems.

---

## Bubble Sort

Status: Finished

### Problem Statement

Given an integer array, sort it in ascending order using Bubble Sort.

---

### Core Idea

Repeatedly compare adjacent elements and swap them if they are in the wrong order.

After every pass:
- The largest unsorted element moves to its correct position at the end.
- Continue until no swaps are needed.

---

### Intuition Example

Input:
[5, 3, 8, 4, 2]

Pass 1:
- Compare 5 & 3 → swap
- Compare 5 & 8 → no swap
- Compare 8 & 4 → swap
- Compare 8 & 2 → swap

Largest element (8) settles at the last index.

---
# Selection Sort

Status: Finished

### Problem Statement

Given an integer array, sort it in ascending order using Selection Sort.

---

### Core Idea

Repeatedly select the **smallest element from the unsorted portion** of the array and place it at the correct position.

After every pass:
- The smallest remaining element moves to the beginning of the unsorted section.
- The sorted portion grows from **left to right**.

---

### Intuition Example

Input
[5, 3, 8, 4, 2]

Pass 1
Find smallest element in entire array → **2**

Swap with first element

[2, 3, 8, 4, 5]

---

Pass 2
Find smallest in remaining array [3, 8, 4, 5] → **3**

Already in correct position

[2, 3, 8, 4, 5]

---

Pass 3
Find smallest in [8, 4, 5] → **4**

Swap with 8

[2, 3, 4, 8, 5]

---

Pass 4
Find smallest in [8, 5] → **5**

Swap

[2, 3, 4, 5, 8]

Array is sorted.

---
# Insertion Sort

### Core Idea

Build the sorted array one element at a time by picking the next item from the unsorted portion and "inserting" it into its correct position within the already sorted portion.

After every pass:

The sorted portion (on the left) grows by one.

All elements to the right of the current "target" that are larger than it are shifted one position to the right to make a hole.

### Intuition Example

Input:
[5, 3, 8, 4, 2]

Pass 1 (Target: 3)

Compare 3 with 5.

5 is larger, so shift 5 right.

Insert 3 at the start.
[3, 5, 8, 4, 2]

Pass 2 (Target: 8)

Compare 8 with 5.

8 is already larger; no shift needed.
[3, 5, 8, 4, 2]

Pass 3 (Target: 4)

Compare 4 with 8 → Shift 8 right.

Compare 4 with 5 → Shift 5 right.

Compare 4 with 3 → 3 is smaller; stop.

Insert 4.
[3, 4, 5, 8, 2]

Pass 4 (Target: 2)

Compare 2 with 8, 5, 4, and 3.

All are larger; shift all of them right.

Insert 2 at the beginning.
[2, 3, 4, 5, 8]

Array is sorted.

---
