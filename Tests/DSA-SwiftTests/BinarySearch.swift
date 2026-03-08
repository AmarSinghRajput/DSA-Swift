import Testing
@testable import DSA_Swift

struct BinarySearchTests {
  
  @Test
  func basicSearchCase() {
    let result = BinarySearch.search([1, 2, 3, 4, 5, 6, 7, 9, 34], target: 2)
    
    #expect(result == 1)
  }
}
