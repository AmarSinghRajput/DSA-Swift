enum ContainerWithMostWater {
  static func find(_ nums: [Int]) -> Int {
    guard nums.count > 0 else { return 0 }

    // max area = width * height
    // i.e width = nums[count - 1] - 0; height = shorter number among both left and right

    var left = 0
    var right = nums.count - 1
    var maxArea = 0

    while left < right {
      let height = min(nums[left], nums[right])
      let width = right - left

      maxArea = max(maxArea, height * width)

      if nums[left] > nums[right] {
        right -= 1
      } else {
        left += 1
      }
    }
    return maxArea
  }
}
