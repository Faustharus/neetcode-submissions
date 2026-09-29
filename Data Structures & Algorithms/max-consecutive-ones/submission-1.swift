class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var counting: Int = 0
        var maxSum: Int = 0

        for num in nums {
            counting += num
            if counting > maxSum {
                maxSum = max(maxSum, counting)
            } else if num == 0 {
                counting = 0
            }
        }

        return maxSum
    }
}
