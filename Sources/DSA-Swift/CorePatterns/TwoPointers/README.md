# Two Pointer Pattern

## Core Intuition
Use two indices to reduce nested loops into linear scan.

Two Pointers is used when:
- Input is **sorted** OR
- You can move from **both ends toward center**
- You want to reduce **O(n²)** brute force to **O(n)**
- Pair sum problems
- Removing duplicates
- Fast/slow pointer scenarios

## Variations
- Opposite ends (left/right)
- Same direction (slow/fast)
- Partitioning

Instead of checking every pair,
you use structure (usually sorted order) to eliminate half the search space per step.

Time Complexity: Mostly **O(n)**  
Space Complexity: Usually **O(1)**  

## Common Mistake
Forgetting sorted constraint.

---

# Pattern 1: Opposite Direction (Sorted Array)

Left pointer → start  
Right pointer → end  

Move pointers based on comparison logic.

---

# Problem 1: Two Sum II – Input Array Is Sorted

**LeetCode #167**  
Difficulty: Easy  
Status: completed  

## Problem

Given a 1-indexed sorted array, find two numbers such that they add up to target.  
Return their indices.

Constraints:
- Exactly one solution
- Must use constant extra space

---

## Approach

Because array is sorted:

If sum < target → move left pointer right  
If sum > target → move right pointer left  
If sum == target → return result  

Why this works:
Sorted order guarantees elimination is valid.

## Complexity
Time: O(n)
Space: O(1)

## Edge Cases
- Empty array
- Single element
- No valid pair

---

