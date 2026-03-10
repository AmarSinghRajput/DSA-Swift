@testable import DSA_Swift
import Testing

struct TwoSumSortedTests {
  @Test
  func `basic case`() {
    let result = TwoSumSorted.solve([1, 2, 3, 4, 5, 6, 7, 8], target: 12)

    #expect(result != nil)
    #expect(result == (3, 7))
  }

  @Test
  func `no solution`() {
    let result = TwoSumSorted.solve([1, 2, 3, 4, 5, 6, 7, 8], target: 100)

    #expect(result == nil)
  }

  @Test
  func `empty array`() {
    let result = TwoSumSorted.solve([], target: 10)

    #expect(result == nil)
  }

  @Test
  func `with one element only`() {
    let result = TwoSumSorted.solve([10], target: 10)

    #expect(result == nil)
  }
}
