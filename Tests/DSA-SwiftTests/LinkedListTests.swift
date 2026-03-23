import Testing
@testable import DSA_Swift

struct LinkedListTests {
  
  // Helper
  func createList(_ values: [Int]) -> LinkedList {
    let list = LinkedList()
    values.reversed().forEach { list.insertAtBeginning(value: $0) }
    return list
  }
  
  func toArray(_ list: LinkedList) -> [Int] {
    var result: [Int] = []
    var current = list.head
    while current != nil {
      result.append(current!.value)
      current = current?.next
    }
    return result
  }
  
  @Test
  func testInsertAtBeginning() {
    let list = LinkedList()
    list.insertAtBeginning(value: 1)
    list.insertAtBeginning(value: 2)
    
    #expect(toArray(list) == [2, 1])
  }
  
  @Test
  func testInsertAtEnd() {
    let list = createList([1, 2])
    list.insertAtEnd(value: 3)
    
    #expect(toArray(list) == [1, 2, 3])
  }
  
  @Test
  func testInsertAtIndex() {
    let list = createList([1, 2, 4])
    list.insertAtIndex(value: 3, position: 2)
    
    #expect(toArray(list) == [1, 2, 3, 4])
  }
  
  @Test
  func testDeleteFirst() {
    let list = createList([1, 2, 3])
    list.deleteFirst()
    
    #expect(toArray(list) == [2, 3])
  }
  
  @Test
  func testDeleteLast() {
    let list = createList([1, 2, 3])
    list.deleteLast()
    
    #expect(toArray(list) == [1, 2])
  }
  
  @Test
  func testReverseList() {
    let list = createList([1, 2, 3])
    list.reverseList()
    
    #expect(toArray(list) == [3, 2, 1])
  }
  
  @Test
  func testFindMiddleOdd() {
    let list = createList([1, 2, 3, 4, 5])
    let middle = list.findMiddle()
    
    #expect(middle?.value == 3)
  }
  
  @Test
  func testFindMiddleEven() {
    let list = createList([1, 2, 3, 4])
    let middle = list.findMiddle()
    
    // Depending on definition, this returns 3 (second middle)
    #expect(middle?.value == 3)
  }
  
  @Test
  func testEmptyList() {
    let list = LinkedList()
    
    #expect(list.head == nil)
    list.deleteFirst()
    list.deleteLast()
    
    #expect(list.head == nil)
  }
}
