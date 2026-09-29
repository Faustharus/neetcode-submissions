class Solution {
    func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        var seen: [Int: Int] = [0: 1]
        var prefixSum: Int = 0
        var reminder: Int = 0
        var counting: Int = 0

        for (index, num) in nums.enumerated() {
            prefixSum += num

            reminder = prefixSum % k

            if let reminderOccurence = seen[reminder] {
                counting += seen[reminder, default: 0]
            }
            seen[reminder, default: 0] += 1
        }

        return counting
    }
}