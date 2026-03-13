import Testing
@testable import DSA_Swift

struct NonRepeatingLongestSubstringTests {
  @Test(arguments: [
    ("abcabcbb", 3),
    ("bbbbb", 1),
    ("pwwkew", 3),
    ("dvdf", 3),
    ("", nil),
  ])
  func findLengthStandardCases(input: String, expected: Int?) {
    #expect(NonRepeatingLongestSubstring.findLength(input) == expected)
  }

  @Test(arguments: [
    ("abcabcbb", "abc"),
    ("bbbbb", "b"),
    ("pwwkew", "wke"),
    ("dvdf", "vdf"),
    ("", nil),
  ])
  func findSubstringStandardCases(input: String, expected: String?) {
    #expect(NonRepeatingLongestSubstring.findSubString(input) == expected)
  }

  @Test
  func handlesStringsWithAllUniqueCharacters() {
    let input = "abcdef"
    #expect(NonRepeatingLongestSubstring.findLength(input) == 6)
    #expect(NonRepeatingLongestSubstring.findSubString(input) == "abcdef")
  }
}
