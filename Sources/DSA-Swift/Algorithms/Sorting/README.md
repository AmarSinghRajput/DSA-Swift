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
