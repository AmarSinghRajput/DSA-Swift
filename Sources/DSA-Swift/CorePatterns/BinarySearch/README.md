# Binary Search

## Problem Statement

Given a sorted integer array, find the index of a target element. If the element is not present, return -1 or nil.

## Core Idea

Use a Divide and Conquer strategy to eliminate half of the search space in every step.

## Core Pattern:

Maintain two pointers: low (start of the range) and high (end of the range).

Calculate the middle index: mid = low + (high - low) / 2.

Compare the middle element with the target:

Match: You found it.

Target is smaller: Move the high pointer to mid - 1.

Target is larger: Move the low pointer to mid + 1.

Repeat until low > high.

## Intuition Example

Input: [2, 3, 4, 5, 8], Target: 5

Step 1:

low = 0, high = 4

mid = 2 (Value: 4)

5 > 4 → Search right half. Set low = 3.

Step 2:

low = 3, high = 4

mid = 3 (Value: 5)

Match! Return index 3.

Complexity Analysis

