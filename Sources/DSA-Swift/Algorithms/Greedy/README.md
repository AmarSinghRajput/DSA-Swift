# Greedy Algorithms

Greedy algorithms make locally optimal choices hoping to find global optimum.

## Overview

Greedy algorithms work by making the locally optimal choice at each step with the hope of finding a global optimum.

| Topic | Key Idea | Difficulty | Status |
| ----- | -------- | ---------- | ------ |
| Activity Selection | Select maximum non-overlapping intervals | ⭐ | Not Started |
| Huffman Coding | Build optimal prefix-free code | ⭐⭐ | Not Started |
| Dijkstra's Algorithm | Find shortest paths from source | ⭐⭐ | Not Started |
| Kruskal's Algorithm | Find minimum spanning tree | ⭐⭐ | Not Started |
| Interval Scheduling | Maximize scheduled tasks | ⭐ | Not Started |

## When to Use Greedy

✅ **Greedy Works When**:
- Problem has optimal substructure (optimal solution contains optimal subsolutions)
- Greedy choice property (locally optimal choice leads to globally optimal solution)

❌ **Greedy Fails When**:
- No greedy choice property exists
- Problem requires complex optimization

## Common Greedy Problems

1. **Activity Selection Problem** - Select maximum non-overlapping activities
2. **Fractional Knapsack** - Fill knapsack with maximum value (items can be fractional)
3. **Coin Change** - Minimum coins for amount
4. **Huffman Coding** - Build optimal prefix code tree
5. **Dijkstra's Algorithm** - Shortest path in weighted graph
6. **Kruskal's & Prim's** - Minimum spanning tree

## Learning Path

1. Understand when greedy works
2. Identify greedy choice property
3. Implement classic algorithms
4. Solve practice problems
5. Recognize greedy patterns in interviews

## Test Files

Tests coming soon in `Tests/DSA-SwiftTests/`

---

**Status**: Not Started
**Next Step**: Implement Activity Selection Problem
