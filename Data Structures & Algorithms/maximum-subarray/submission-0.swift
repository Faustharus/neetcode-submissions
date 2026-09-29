class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var currentSum: Int = 0
        var maxSum: Int = nums[0]

        for index in 0 ..< nums.count {
            currentSum = max(currentSum, 0)
            currentSum += nums[index]
            maxSum = max(maxSum, currentSum)
        }

        return maxSum
    }
}
