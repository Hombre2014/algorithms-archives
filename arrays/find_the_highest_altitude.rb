# There is a biker going on a road trip. The road trip
# consists of n + 1 points at different altitudes. The
# biker starts his trip on point 0 with altitude equal 0.

# You are given an integer array gain of length n where
# gain[i] is the net gain in altitude between points i​​​​​​
# and i + 1 for all (0 <= i < n). Return the highest
# altitude of a point.

# Example 1:
#
# Input: gain = [-5,1,5,0,-7]
# Output: 1
# Explanation: The altitudes are [0,-5,-4,1,1,-6].
# The highest is 1.
#
# Example 2:
#
# Input: gain = [-4,-3,-2,-1,4,3,2]
# Output: 0
# Explanation: The altitudes are [0,-4,-7,-9,-10,-6,-3,-1].
# The highest is 0.

# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  arr = [0]
  points = gain.count

  # calculate altitude array
  (1..points).each do |pointer|
    sum = arr[pointer - 1] + gain[pointer - 1]
    arr.push(sum)
  end

  # find maximum altitude
  max = 0
  arr.each { |i| max = i if max < i }
  max
end

gain = [-5, 1, 5, 0, -7]
largest_altitude(gain)
# Output: 1

gain = [-4, -3, -2, -1, 4, 3, 2]
largest_altitude(gain)
# Output: 0
