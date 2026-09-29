class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var majority: Int = 0
        var counting: Int = 0

        for num in nums {
            if counting == 0 {
                majority = num
                counting += 1
            } else if majority != num {
                counting -= 1
            } else {
                counting += 1
            }
        }
        return majority
    }
}
