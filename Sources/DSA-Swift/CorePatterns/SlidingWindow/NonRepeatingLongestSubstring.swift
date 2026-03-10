enum NonRepeatingLongestSubstring {
  static func findLength(_ str: String) -> Int? {
    guard !str.isEmpty else { return nil }

    var seenChars = [Character: Int]()
    var left = 0
    var maxLength = 0

    for (index, char) in str.enumerated() {
      if let lastSeenIndex = seenChars[char], lastSeenIndex >= left {
        left = lastSeenIndex + 1
      }
      seenChars[char] = index
      maxLength = max(maxLength, index - left + 1) // + coz we count from 0
    }

    return maxLength
  }

  static func findSubString(_ str: String) -> String? {
    guard !str.isEmpty else { return nil }

    var seenChars = [Character: Int]()
    var left = 0
    var maxLength = 0
    var startingIndex = 0

    for (index, char) in str.enumerated() {
      if let lastSeenIndex = seenChars[char], lastSeenIndex >= left {
        left = lastSeenIndex + 1
      }
      seenChars[char] = index

      let currentLength = index - left + 1
      if currentLength > maxLength {
        maxLength = currentLength
        startingIndex = left
      }
    }

    let range = Array(str)[startingIndex ..< (startingIndex + maxLength)]
    return String(range)
  }
}
