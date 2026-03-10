@testable import DSA_Swift
import Testing

struct BubbleSortTests {
  @Test
  func `basic case`() {
    let result = BubbleSort.sort([4, 2, 9, 11, 0, 6, 2, 1, 34])

    #expect(result != nil)
    #expect(result == [0, 1, 2, 2, 4, 6, 9, 11, 34])
  }

  @Test
  func `empty array`() {
    let result = BubbleSort.sort([])

    #expect(result == nil)
  }

  @Test
  func `with one element only`() {
    let result = BubbleSort.sort([4])

    #expect(result == [4])
  }
}
