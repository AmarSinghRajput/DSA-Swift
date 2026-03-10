import Testing
@testable import DSA_Swift

struct ContainerWithMostWaterTests {
  
  @Test
  func basicCase() {
    let result = ContainerWithMostWater.find([1,8,6,2,5,4,8,3,7])
    #expect(result == 49)
  }
  
  // minimal valid container
  @Test
  func twoElements() {
    let result = ContainerWithMostWater.find([1,1])
    #expect(result == 1)
  }
  
  // no container possible
  @Test
  func singleElement() {
    let result = ContainerWithMostWater.find([5])
    #expect(result == 0)
  }
  
  // increasing heights
  @Test
  func increasingHeights() {
    let result = ContainerWithMostWater.find([1,2,3,4,5])
    #expect(result == 6)
  }
  
  // decreasing heights
  @Test
  func decreasingHeights() {
    let result = ContainerWithMostWater.find([5,4,3,2,1])
    #expect(result == 6)
  }
  
  // all heights equal
  @Test
  func equalHeights() {
    let result = ContainerWithMostWater.find([4,4,4,4])
    #expect(result == 12)
  }
  
  // zeros inside
  @Test
  func containsZeros() {
    let result = ContainerWithMostWater.find([0,2,0,4,0])
    #expect(result == 4)
  }
  
  // wide container better than tall
  @Test
  func widthDominates() {
    let result = ContainerWithMostWater.find([1,3,2,5,25,24,5])
    #expect(result == 24)
  }
  
  // typical mixed case
  @Test
  func mixedCase() {
    let result = ContainerWithMostWater.find([2,3,10,5,7,8,9])
    #expect(result == 36)
  }
}
