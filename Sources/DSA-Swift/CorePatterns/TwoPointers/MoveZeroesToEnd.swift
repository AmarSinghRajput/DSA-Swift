struct MoveZeroesToEnd {
  
  public static func move(_ nums: inout [Int]) {
    var writeIndex = 0
    
    for readIndex in 0..<nums.count {
      if nums[readIndex] != 0 {
        nums.swapAt(readIndex, writeIndex)
        writeIndex += 1
      }
    }
  }
}

