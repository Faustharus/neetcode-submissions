class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var counting: Int = 0
        var result: Int = 0
        var i: Int = 0

        while i < nums.count {
            if counting == 0 {
                result = nums[i]
            }

            if nums[i] == result {
                counting += 1
            } else {
                counting -= 1
            }
            i += 1
        }
        return result
    }
}
