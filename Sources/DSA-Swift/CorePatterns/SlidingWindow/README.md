# Sliding Window Pattern

The **Sliding Window** pattern is used for problems that involve a **contiguous subarray or substring**.
Instead of checking every possible subarray (which usually leads to **O(n²)** complexity), the sliding window technique allows us to **expand and shrink a window** to solve the problem efficiently in **O(n)** time.

A window is defined by two pointers:
[left ........ right]

The window **slides** across the input while maintaining a specific condition.

---

# Types of Sliding Window

There are **two main types** of sliding window problems.

---

## 1. Fixed Size Sliding Window

In this pattern, the **window size remains constant**.

Example problems:

- Maximum sum subarray of size `k`
- Average of subarrays of size `k`
- Count distinct elements in window of size `k`

### Example

Array:
[2, 1, 5, 1, 3, 2]

Window size = `3`
[2 1 5] 1 3 2
2 [1 5 1] 3 2
2 1 [5 1 3] 2
2 1 5 [1 3 2]

Steps:

1. Compute the first window.
2. Move the window forward by:
   - removing the left element
   - adding the new right element

Typical structure:

```swift
for right in 0..<nums.count {
    windowSum += nums[right]

    if right >= k - 1 {
        // process window

        windowSum -= nums[left]
        left += 1
    }
}

Time complexity: O(n)

2. Dynamic Size Sliding Window

In this pattern, the window size changes dynamically.

The window expands until a condition breaks and then shrinks until the condition becomes valid again.

Example problems:

Longest substring without repeating characters
Minimum window substring
Longest substring with at most K distinct characters
Typical behavior:
expand window → condition breaks → shrink window → continue

Typical structure:
for right in 0..<input.count {

    // expand window

    while condition is invalid {
        // shrink window
        left += 1
    }

    // update result
}

Time complexity: O(n) because each pointer moves at most n times.

## Problem Statement

You are given a string `s`.

Find the **length of the longest substring** that contains **no repeating characters**.

A substring is a **contiguous sequence of characters** within the string.

Return the **length of the longest such substring**.

---

## Rules

- Characters inside the substring must be **unique**.
- The substring must be **continuous** (you cannot skip characters).
- If the string is empty, return **0**.

---

## Examples

### Example 1
Input:
s = "abcabcbb"
Output:
3

**Explanation**

The longest substring without repeating characters is:
"abc"

Length = `3`

---

### Example 2
Input:
s = "bbbbb"
Output:
1

**Explanation**

The longest substring is:
"b"

Length = `1`

---

### Example 3
Input:
s = "pwwkew"
Output:
3

**Explanation**

The longest substring without repeating characters is:
"wke"

Length = `3`

Note: `"pwke"` is not valid because it is **not a contiguous substring**.

---

## Constraints
0 <= s.length <= 5 * 10^4

`s` consists of English letters, digits, symbols, and spaces.

---

## Pattern

This problem follows the **Sliding Window** pattern.

The idea is to expand a window over the string and shrink it whenever a duplicate character is found.

---

## Complexity
Time Complexity: O(n)
Space Complexity: O(min(n, character set))
