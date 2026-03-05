import Testing
@testable import DSA_Swift

struct SelectionSortTests {
  
  @Test
  func sort() {
    let result = SelectionSort.sort([3,1,2,5,0])
    
    #expect(result != nil)
    #expect(result == [0,1,2,3,5])
  }
  
  @Test
  func emptyArray() {
    let result = SelectionSort.sort([])
    
    #expect(result == nil)
  }
  
  @Test
  func withOneElementOnly() {
    let result = SelectionSort.sort([4])
    
    #expect(result == [4])
  }
}
