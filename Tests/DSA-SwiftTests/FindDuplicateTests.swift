import Testing
@testable import DSA_Swift

struct FindDuplicateTests {
  
  @Test
  func basicCase() {
    let result = FindDuplicate.find([1,23,4,6,8,2,9,0,1,32,56,74,12,41])
    
    #expect(result == true)
  }
  
  @Test
  func emptyCase() {
    let result = FindDuplicate.find([])
    
    #expect(result == false)
  }
  
  @Test
  func find2Method_shouldReturnTrueWithoutDuplicates() {
    let result = FindDuplicate.find2([1,23,4,6,8,2,9,0,1,32,56,74,12,41])
    
    #expect(result == true)
  }
  
  @Test
  func find2Method_shouldReturnFalseWithoutDuplicates() {
    let result = FindDuplicate.find2([1,23,4,6,8,2,9,0,32,56,74,12,41])
    
    #expect(result == false)
  }
}
