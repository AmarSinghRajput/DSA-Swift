# Two Sum II (Sorted Array)

## Pattern
Two Pointers (Opposite Ends)

## Problem
Given a sorted array, return indices of two numbers that sum to target.

## Clarifications
- Exactly one solution?
- 0-based index?

## Intuition
Sorted array gives direction.
If sum < target → move left pointer.
If sum > target → move right pointer.

## Complexity
Time: O(n)
Space: O(1)

## Edge Cases
- Empty array
- Single element
- No valid pair
