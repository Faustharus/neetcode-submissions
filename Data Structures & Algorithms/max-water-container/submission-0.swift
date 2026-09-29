class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var maxSum: Int = 0
        var left: Int = 0
        var right: Int = heights.count - 1

        while left < right {
            var temp: Int = 0
            temp = (right - left) * min(heights[left], heights[right])

            if heights[left] < heights[right] {
                left += 1
            } else {
                right -= 1
            }

            if temp > maxSum {
                maxSum = max(maxSum, temp)
            }
        }

        return maxSum
    }
}
