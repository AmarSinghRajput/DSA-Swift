struct FindDuplicate {
  
  public static func find(_ nums: [Int]) -> Bool {
    guard !nums.isEmpty else { return false }
    
    var record = [Int: Int]()
    for (index, element) in nums.enumerated() {
      if let _ = record[element] {
        return true
      }else {
        record[element] = index
      }
    }
    return false
  }
  
  
  //cleaner one using set
  public static func find2(_ nums: [Int]) -> Bool {
    var seen = Set<Int>()
    
    for each in nums {
      if seen.contains(each) {
        return true
      } else {
        seen.insert(each)
      }
    }
    return false
  }
}
