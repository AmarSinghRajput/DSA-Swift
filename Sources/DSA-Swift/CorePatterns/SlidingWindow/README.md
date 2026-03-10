# Longest Substring Without Repeating Characters

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
