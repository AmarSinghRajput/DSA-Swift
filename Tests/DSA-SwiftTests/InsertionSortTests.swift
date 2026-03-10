@testable import DSA_Swift
import Testing

struct InsertionSortTests {
  @Test
  func `basic case`() {
    var result = [4, 2, 9, 11, 0, 6, 2, 1, 34]
    InsertionSort.sort(&result)

    #expect(result == [0, 1, 2, 2, 4, 6, 9, 11, 34])
  }

  @Test
  func `with one element only`() {
    var result = [4]
    InsertionSort.sort(&result)

    #expect(result == [4])
  }
}
