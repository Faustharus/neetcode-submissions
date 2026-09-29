class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var prefixSum: Int = 0
        var counting: Int = 0

        for (index, num) in nums.enumerated() {
            prefixSum += num
            if prefixSum > counting {
                counting = max(counting, prefixSum)
            } else if num == 0 {
                prefixSum = 0
            }
        }

        return counting
    }
}
