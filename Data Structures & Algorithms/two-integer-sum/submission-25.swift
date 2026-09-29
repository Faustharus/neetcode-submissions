class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]() // [4: 0, 5: 1]

        for (index, num) in nums.enumerated() { // (0, 4) ; (1, 5) ; (2, 6)
            let complement = target - num // 10 - 4 = 6 ; 10 - 5 = 5 ; 10 - 6 = 4
            if let complementIndex = seen[complement] { // seen[key]
                return [complementIndex, index] // [0, 2]
            }
            seen[num] = index // [4: 0, 5: 1]
        }

        return []
    }
}
