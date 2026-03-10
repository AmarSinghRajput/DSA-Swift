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

## Given an integer array nums, move all 0s to the end of the array while maintaining the relative order of the non-zero elements.

###The operation must be done in-place, meaning you cannot create another array for storing the result.

Example 1
Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]

Example 2
Input: nums = [0,0,1]
Output: [1,0,0]

Constraints
1 ≤ nums.length ≤ 10⁴
-2³¹ ≤ nums[i] ≤ 2³¹ - 1

## Container With Most Water – Problem Statement

###You are given an array height of n non-negative integers. Each element represents the height of a vertical line drawn at that index.

###Find two lines such that together with the x-axis they form a container that can hold the maximum amount of water.

###Return the maximum amount of water the container can store.

###Rules

The container is formed by choosing two different indices i and j.
The amount of water the container can hold is determined by:

area = min(height[i], height[j]) * (j - i)

min(height[i], height[j]) represents the limiting height of the water.

(j - i) represents the width (distance between the two lines).

Example
Input: height = [1,8,6,2,5,4,8,3,7]

Output: 49
Explanation:
Choose the lines at index 1 and 8:
height[1] = 8
height[8] = 7
width = 8 - 1 = 7

area = min(8,7) * 7 = 49


The container formed by these two lines holds the maximum possible water (49).

# The idea is to find shorter height and move it inwards then calc area, campare it with stored max pair values.
---
