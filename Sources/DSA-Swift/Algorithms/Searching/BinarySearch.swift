enum BinarySearch {
  static func search(_ nums: [Int], target: Int) -> Int? {
    guard !nums.isEmpty else { return nil }

    var left = 0
    var right = nums.count - 1

    while left < right {
      let mid = left + right / 2
      if target == nums[mid] {
        return mid
      } else if target < mid {
        right = mid - 1
      } else if target > mid {
        left = mid + 1
      }
    }
    return nil
  }
}
