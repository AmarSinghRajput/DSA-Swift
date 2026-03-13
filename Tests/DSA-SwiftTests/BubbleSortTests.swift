import Testing
@testable import DSA_Swift

struct BubbleSortTests {
  @Test
  func basicCase() {
    let result = BubbleSort.sort([4, 2, 9, 11, 0, 6, 2, 1, 34])

    #expect(result != nil)
    #expect(result == [0, 1, 2, 2, 4, 6, 9, 11, 34])
  }

  @Test
  func emptyArray() {
    let result = BubbleSort.sort([])

    #expect(result == nil)
  }

  @Test
  func withOneElementOnly() {
    let result = BubbleSort.sort([4])

    #expect(result == [4])
  }
}
