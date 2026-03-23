class Node {
  var value: Int
  var next: Node?
  
  init(value: Int, next: Node?) {
    self.value = value
    self.next = next
  }
}

class LinkedList {
  var head: Node?
  
  func insertAtBeginning(value: Int) {
    let node = Node(value: value, next: head)
    self.head = node
  }
  
  func insertAtEnd(value: Int) {
    guard head != nil else {
      head = Node(value: value, next: nil)
      return
    }
    var counterNode = head
    while counterNode?.next != nil {
      counterNode = counterNode?.next
    }
    
    let node = Node(value: value, next: nil)
    counterNode?.next = node
  }
  
  func insertAtIndex(value: Int, position: Int) {
    if position == 0 {
      insertAtBeginning(value: value)
      return
    }
    
    var index = 0
    var current = head
    
    while index < position - 1, current != nil {
      current = current?.next
      index += 1
    }
    
    guard current != nil else { return } // out of bounds
    
    let node = Node(value: value, next: current?.next)
    current?.next = node
  }
  
  func deleteFirst() {
    head = head?.next
  }
  
  func deleteLast() {
    guard let head = head else { return }
    
    if head.next == nil {
      self.head = nil
      return
    }
    
    var current = head
    while current.next?.next != nil {
      current = current.next!
    }
    
    current.next = nil
  }
  
  func traverse() {
    var current = head
    while current != nil {
      debugPrint(current!.value)
      current = current?.next
    }
  }
  
  func reverseList() {
    var previous: Node? = nil
    var current = head

    while current != nil {
      let next = current?.next
      current?.next = previous
      previous = current
      current = next
    }
    head = previous
  }
  
  func findMiddle() -> Node? {
    var slow = head
    var fast = head
    while fast != nil && fast?.next != nil {
      slow = slow?.next
      fast = fast?.next?.next
    }
    
    return slow
  }
}
