class Solution {
    func trap(_ height: [Int]) -> Int {
        if height.isEmpty { return 0 }

        var left: Int = 0
        var right: Int = height.count - 1
        var leftMax: Int = height[left]
        var rightMax: Int = height[right]
        var result: Int = 0

        while left < right {
            if leftMax < rightMax {
                left += 1
                leftMax = max(leftMax, height[left])
                result += (leftMax - height[left])
            } else {
                right -= 1
                rightMax = max(rightMax, height[right])
                result += (rightMax - height[right])
            }
        }
        return result
    }
}
