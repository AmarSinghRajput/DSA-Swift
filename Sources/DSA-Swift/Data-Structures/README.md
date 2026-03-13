# Data Structures

This section covers fundamental data structure implementations and their applications.

## Overview

| Data Structure | Key Operations                 | Time Complexity (Avg)        | Space       | Status      |
| -------------- | ------------------------------ | ---------------------------- | ----------- | ----------- |
| Array          | Access: O(1), Insert: O(n)     | Search: O(n)                 | O(n)        | Not Started |
| Linked List    | Access: O(n), Insert: O(1)    | Search: O(n)                 | O(n)        | Not Started |
| Stack          | Push/Pop: O(1)                 | -                            | O(n)        | Not Started |
| Queue          | Enqueue/Dequeue: O(1)          | -                            | O(n)        | Not Started |
| Heap           | Insert: O(log n), Delete: O(log n) | Peek: O(1)            | O(n)        | Not Started |
| Tree (BST)     | Search: O(log n) avg           | Insert: O(log n) avg         | O(n)        | Not Started |
| Graph          | Traversal: O(V + E)            | -                            | O(V + E)    | Not Started |
| HashMap        | Insert/Delete: O(1) avg        | Search: O(1) avg             | O(n)        | Not Started |

## Learning Path

1. **Array** - Master indexing, dynamic allocation, and common patterns
2. **Linked List** - Understand node-based structures and pointer manipulation
3. **Stack & Queue** - Work with LIFO and FIFO abstractions
4. **Heap** - Learn priority-based structures
5. **Tree** - Understand hierarchical structures and traversals
6. **Graph** - Master graph representations and algorithms
7. **HashMap** - Work with associative arrays and hash functions

## Implementation Guidelines

- Each data structure includes:
  - Core implementation
  - Standard operations (insert, delete, search, etc.)
  - Common interview problems
  - Edge case handling
  - Complexity analysis

## Testing

Run tests for each data structure:
```bash
swift test
```

Refer to `Tests/DSA-SwiftTests/` for comprehensive test coverage.
