import Testing
@testable import DSA_Swift

struct TwoSumSortedTests {
  
  @Test
  func besicCase() {
    let result = TwoSumSorted.solve([1,2,3,4,5,6,7,8], target: 12)
    
    #expect(result != nil)
    #expect(result! == (3,7))
  }
  
  @Test
  func noSolution() {
    let result = TwoSumSorted.solve([1,2,3,4,5,6,7,8], target: 100)
    
    #expect(result == nil)
  }
  
  @Test
  func emptyArray() {
    let result = TwoSumSorted.solve([], target: 10)
    
    #expect(result == nil)
  }
  
  @Test
  func withOneElementOnly() {
    let result = TwoSumSorted.solve([10], target: 10)
    
    #expect(result == nil)
  }
}
