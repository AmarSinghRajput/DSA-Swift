struct SelectionSort {
  
  public static func sort(_ nums: [Int]) -> [Int]? {
    guard !nums.isEmpty else { return nil }
    
    var sortedArray = nums
    for i in 0..<sortedArray.count - 1 {
      var minimumIndex = i
      
      for j in i + 1..<nums.count {
        if sortedArray[j] < nums[minimumIndex] {
          minimumIndex = j
        }
      }
      sortedArray.swapAt(minimumIndex, i)
    }
    return sortedArray
  }
}
