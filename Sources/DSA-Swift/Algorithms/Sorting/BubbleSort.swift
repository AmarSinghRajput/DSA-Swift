public enum BubbleSort {
  public static func sort(_ nums: [Int]) -> [Int]? {
    guard !nums.isEmpty else { return nil }

    var sortedArray = nums

    for elementIndex in 0 ..< sortedArray.count - 1 {
      for currentIndex in 0 ..< sortedArray.count - 1 - elementIndex {
        if sortedArray[currentIndex] > sortedArray[currentIndex + 1] {
          sortedArray.swapAt(currentIndex, currentIndex + 1)
        }
      }
    }
    return sortedArray
  }
}
