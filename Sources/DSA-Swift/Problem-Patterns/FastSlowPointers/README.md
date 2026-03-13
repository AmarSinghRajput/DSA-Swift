# Fast-Slow Pointers Pattern

Also known as "tortoise and hare", use two pointers moving at different speeds to solve problems efficiently.

## Overview

Fast-slow pointers is a variant of two pointers specifically designed for cycle detection and linked list problems.

| Problem Type | Key Idea | Difficulty | Status |
| ------------ | -------- | ---------- | ------ |
| Cycle Detection | Detect if cycle exists | ⭐⭐ | Not Started |
| Cycle Start | Find where cycle begins | ⭐⭐ | Not Started |
| Linked List Middle | Find middle node | ⭐ | Not Started |
| Happy Number | Detect convergence/cycle | ⭐⭐ | Not Started |
| Palindrome | Check palindrome linked list | ⭐⭐ | Not Started |

## How It Works

### Cycle Detection (Floyd's Algorithm)

Two pointers move through sequence:
- **Slow pointer**: Moves 1 step
- **Fast pointer**: Moves 2 steps

If cycle exists:
- They will eventually meet
- Meeting point is inside the cycle
- Time: O(n), Space: O(1)

**Why It Works**: 
In a cycle, fast pointer moves faster than slow pointer, eventually they meet.

**Template**:
```swift
var slow = head
var fast = head

while fast != nil && fast.next != nil {
    slow = slow.next
    fast = fast.next?.next
    
    if slow === fast {
        return true  // Cycle found
    }
}

return false  // No cycle
```

### Finding Cycle Start

Once cycle detected:
1. Move one pointer to head
2. Move both pointers 1 step at a time
3. Where they meet is cycle start

**Why It Works**:
Mathematical property of linked list cycles. Distance from head to cycle start equals distance from meeting point to cycle start within the cycle.

## Common Problems

1. **Linked List Cycle** - Detect if cycle exists
2. **Linked List Cycle II** - Find start of cycle
3. **Middle of Linked List** - Find middle node
4. **Happy Number** - Detect if number converges to 1
5. **Palindrome Linked List** - Check if palindrome
6. **Circular Array Loop** - Detect cycles in arrays

## Interview Tips

✅ **When to Use**:
- Linked list cycle problems → Fast-slow
- Find middle of list → Fast-slow (2x speed)
- Convergence detection → Fast-slow
- Memory constraint (O(1) space) → Fast-slow

✅ **Key Properties**:
- **Space efficient**: O(1) space for cycle detection
- **Time efficient**: O(n) single pass
- **Elegant solution**: For linked list problems
- **Floyd's Algorithm**: Classic technique

✅ **Common Mistakes**:
- Not handling null pointers
- Wrong speed ratio (not 2x)
- Off-by-one in meeting point
- Not considering fast pointer null checks

## Complexity Analysis

| Problem | Time | Space |
| ------- | ---- | ----- |
| Cycle Detection | O(n) | O(1) |
| Cycle Start | O(n) | O(1) |
| Middle Node | O(n) | O(1) |
| Happy Number | O(1) to O(logn) | O(1) |

## Linked List Example

```swift
class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) {
        self.val = val
    }
}

func detectCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        
        if slow === fast {
            return true
        }
    }
    
    return false
}
```

## Array Variant

Can be used for arrays interpreted as cycles:

```swift
func isHappyNumber(_ n: Int) -> Bool {
    var slow = n
    var fast = n
    
    while true {
        slow = sumOfSquares(slow)
        fast = sumOfSquares(sumOfSquares(fast))
        
        if fast == 1 { return true }
        if slow == fast { return false }  // Cycle without reaching 1
    }
}
```

## Learning Path

1. **Linked List Basics**: Node structure, traversal
2. **Cycle Detection**: Basic Floyd's algorithm
3. **Cycle Start**: Advanced cycle problems
4. **Optimization**: Using fast-slow for efficiency

## Testing

Tests coming soon in `Tests/DSA-SwiftTests/`

## Comparison with Other Methods

| Method | Time | Space | Notes |
| ------ | ---- | ----- | ----- |
| Fast-Slow | O(n) | O(1) | Best for cycles |
| Hash Set | O(n) | O(n) | Simple but uses space |
| Recursion | O(n) | O(n) | Stack overhead |

## Related Patterns

- **Two Pointers** - General variant
- **Linked List** - Primary use case
- **Cycle Detection** - Core concept

## Resources

- "Introduction to Algorithms" - Floyd's algorithm
- LeetCode: Linked List Cycle problems
- GeeksforGeeks: Floyd's Cycle Detection
