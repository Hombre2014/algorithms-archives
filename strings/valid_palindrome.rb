# Given a string s, determine if it is a palindrome,
# considering only alphanumeric characters and ignoring cases.
#
#
# Example 1:
#
# Input: s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.
#
# Example 2:
#
# Input: s = "race a car"
# Output: false
# Explanation: "raceacar" is not a palindrome.
#
# Constraints:
#
# 1 <= s.length <= 2 * 105
# s consists only of printable ASCII characters.

#
# Approach 1: with Ruby functions!
#

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  str = s.gsub(/[^a-zA-Z0-9]/, '').downcase

  str.reverse == str
end

s = 'A man, a plan, a canal: Panama'
is_palindrome(s)
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.

s = 'race a car'
is_palindrome(s)
# Output: false
# Explanation: "raceacar" is not a palindrome.

s = 'ab_a'
is_palindrome(s)
# Output: true
# Explanation: "raceacar" is not a palindrome.

#
# Approach 2: Compare with reverse
#

# Complexity Analysis
#
# Time complexity: O(n), in length nn of the string.
# We need to iterate thrice through the string: When we filter out
# non-alphanumeric characters, and convert the remaining
# characters to lower-case.  When we reverse the string.  When we compare
# the original and the reversed strings. Each iteration runs linear in time
# (since each character operation completes in constant time). Thus, the effective
# run-time complexity is linear.
#
# Space complexity: O(n), in length nn of the string. We need O(n) additional
# space to stored the filtered string and the reversed string.

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  str = s.gsub(/[^a-zA-Z0-9]/, '').downcase

  chars = str.chars
  reverse = str.chars.reverse

  chars.each_with_index do |letter, index|
    return false if letter != reverse[index]
  end

  true
end

s = 'A man, a plan, a canal: Panama'
is_palindrome(s)
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.

s = 'race a car'
is_palindrome(s)
# Output: false
# Explanation: "raceacar" is not a palindrome.

s = 'ab_a'
is_palindrome(s)
# Output: true
# Explanation: "raceacar" is not a palindrome.
