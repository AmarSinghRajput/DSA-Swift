public struct TwoSumSorted {
  
  public static func solve(_ nums: [Int], target: Int) -> (Int, Int)? {
    guard !nums.isEmpty else { return nil }
    
    var left = 0
    var right = nums.count - 1
    
    while left < right {
      let sum = nums[left] + nums[right]
      
      if sum == target {
        return (left, right)
      } else if sum < target {
        left += 1
      } else if sum > target {
        right -= 1
      }
    }
    
    return nil
  }
}
