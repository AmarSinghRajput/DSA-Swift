enum InsertionSort {
  static func sort(_ nums: inout [Int]) {
    guard !nums.isEmpty else { return }

    // we sort as if we are sorting playing cards in sequence
    // we assume that 1st element is already sorted so we will start from 2nd
    for i in 1 ..< nums.count {
      let key = nums[i] // this is the current num we want to put at correct place
      var j = i - 1 // we will start comparing it with last element coz we considered 0th so i - 1
      while j >= 0, nums[j] > key {
        nums[j + 1] = nums[j]
        j -= 1 // in last cycle, this will decrease index to one less than correct position of key
      }
      nums[j + 1] = key // place the num at its correct position
    }
  }
}
