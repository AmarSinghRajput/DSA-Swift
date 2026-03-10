@testable import DSA_Swift
import Testing

struct MoveZeroesToEndTests {
  @Test
  func `basic case`() {
    var testArray = [0, 4, 0, 2, 9, 11, 0, 6, 2, 1, 34]
    MoveZeroesToEnd.move(&testArray)

    #expect(testArray == [4, 2, 9, 11, 6, 2, 1, 34, 0, 0, 0])
  }

  @Test
  func `empty case`() {
    var testArray = [Int]()
    MoveZeroesToEnd.move(&testArray)

    #expect(testArray == [])
  }

  @Test
  func `with only one non zero element`() {
    var testArray = [0, 0, 0, 0, 1]
    MoveZeroesToEnd.move(&testArray)

    #expect(testArray == [1, 0, 0, 0, 0])
  }
}
