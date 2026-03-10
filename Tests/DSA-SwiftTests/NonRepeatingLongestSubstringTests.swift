@testable import DSA_Swift
import Testing

struct NonRepeatingLongestSubstringTests {
  @Test(arguments: [
    ("abcabcbb", 3),
    ("bbbbb", 1),
    ("pwwkew", 3),
    ("dvdf", 3),
    ("", nil),
  ])
  func `Find Length: Standard cases`(input: String, expected: Int?) {
    #expect(NonRepeatingLongestSubstring.findLength(input) == expected)
  }

  @Test(arguments: [
    ("abcabcbb", "abc"),
    ("bbbbb", "b"),
    ("pwwkew", "wke"),
    ("dvdf", "vdf"),
    ("", nil)
  ])
  func `Find Substring: Standard cases`(input: String, expected: String?) {
    #expect(NonRepeatingLongestSubstring.findSubString(input) == expected)
  }

  @Test
  func `Handles strings with all unique characters`() {
    let input = "abcdef"
    #expect(NonRepeatingLongestSubstring.findLength(input) == 6)
    #expect(NonRepeatingLongestSubstring.findSubString(input) == "abcdef")
  }
}
