import Testing
@testable import DSA_Swift

struct MoveZeroesToEndTests {
  
  @Test
  func basicCase() {
    var testArray = [0, 4, 0, 2, 9, 11, 0, 6, 2, 1, 34]
    MoveZeroesToEnd.move(&testArray)
    
    #expect(testArray == [4, 2, 9, 11, 6, 2, 1, 34, 0, 0, 0])
  }
  
  @Test
  func EmptyCase() {
    var testArray = [Int]()
    MoveZeroesToEnd.move(&testArray)
    
    #expect(testArray == [])
  }
  
  @Test
  func withOnlyOneNonZeroElement() {
    var testArray = [0, 0, 0, 0, 1]
    MoveZeroesToEnd.move(&testArray)
    
    #expect(testArray == [1, 0, 0, 0, 0])
  }
}
