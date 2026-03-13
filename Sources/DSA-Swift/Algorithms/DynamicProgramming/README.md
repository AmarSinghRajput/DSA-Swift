# Dynamic Programming

Solve complex problems by breaking them into overlapping subproblems and storing results.

## Overview

Dynamic Programming (DP) is an optimization technique that works when:
1. Problem has **optimal substructure** (solution contains optimal solutions to subproblems)
2. Problem has **overlapping subproblems** (same subproblems solved repeatedly)

| Topic | Key Idea | Difficulty | Status |
| ----- | -------- | ---------- | ------ |
| 0/1 Knapsack | Select items with max value within capacity | ⭐⭐ | Not Started |
| Unbounded Knapsack | Knapsack with unlimited item copies | ⭐⭐ | Not Started |
| Longest Common Subsequence | Find longest matching subsequence | ⭐⭐ | Not Started |
| Edit Distance | Minimum operations to transform string | ⭐⭐ | Not Started |
| Matrix Chain Multiplication | Minimize operations for matrix multiplication | ⭐⭐⭐ | Not Started |
| Coin Change | Minimum coins for target amount | ⭐⭐ | Not Started |

## DP Approach

### 1. Top-Down (Memoization)
- Recursive solution with caching
- Natural approach for thinking
- Risk of stack overflow
- Example: Fibonacci with memoization

### 2. Bottom-Up (Tabulation)
- Iterative solution building up from base cases
- More efficient (avoids recursion overhead)
- Uses explicit space for DP table
- Example: Fibonacci with array

## Steps to Solve DP Problems

1. **Define Subproblems**
   - dp[i] = answer to subproblem of size i
   - dp[i][j] = answer considering first i and j elements

2. **Recurrence Relation**
   - How does current problem relate to subproblems?
   - dp[i] = f(dp[i-1], dp[i-2], ...)

3. **Base Cases**
   - What are the simplest subproblems?
   - dp[0] = ?, dp[1] = ?

4. **Build Solution**
   - Bottom-up: fill table from base cases
   - Top-down: compute recursively with memoization

## Classic DP Problems

### Fibonacci
**Problem**: Find nth Fibonacci number

**Recurrence**: F(n) = F(n-1) + F(n-2), F(0)=0, F(1)=1

**Complexity**: O(n) time, O(n) space (bottom-up)

### 0/1 Knapsack
**Problem**: Maximum value items that fit in capacity W

**State**: dp[i][w] = max value using first i items with capacity w

**Transition**: dp[i][w] = max(dp[i-1][w], dp[i-1][w-weight[i]] + value[i])

### Longest Common Subsequence
**Problem**: Find longest subsequence common to two strings

**State**: dp[i][j] = length of LCS of first i chars of s1 and j chars of s2

**Transition**: 
- If s1[i] == s2[j]: dp[i][j] = dp[i-1][j-1] + 1
- Else: dp[i][j] = max(dp[i-1][j], dp[i][j-1])

## Common Mistakes

❌ **Wrong Base Cases** - Verify with small examples
❌ **Off-by-One Errors** - Test carefully
❌ **Not Identifying Subproblems** - Think recursively first
❌ **Inefficient Recurrence** - Optimize before coding

## Interview Tips

✅ Recognize DP problems:
- "Minimum/maximum..." 
- "Number of ways..."
- "Can you achieve..."
- Optimal, count, feasibility questions

✅ Approach:
1. Brute force first (show you understand)
2. Identify overlapping subproblems
3. Define DP state clearly
4. Write recurrence relation
5. Implement bottom-up

✅ Practice these problems:
- Fibonacci variants
- Coin change
- House robber
- Climbing stairs
- Edit distance
- Longest increasing subsequence

## Learning Path

1. **Basics**: Fibonacci, simple sequences
2. **1D Problems**: House robber, climbing stairs
3. **2D Problems**: Knapsack, matrix paths
4. **String Problems**: Edit distance, LCS
5. **Advanced**: Tree DP, digit DP, bitmask DP

## Testing

Tests coming soon in `Tests/DSA-SwiftTests/`

---

**Status**: Not Started
**Next Step**: Implement Fibonacci with memoization and tabulation

## Resources

- "Introduction to Algorithms" - Chapter 15
- GeeksforGeeks: Dynamic Programming
- LeetCode Explore: Dynamic Programming
