class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()

        for (index, num) in nums.enumerated() {
            let complement = target - num
            if let complementNum = seen[complement] {
                return [complementNum, index]
            }
            seen[num] = index
        }

        return []
    }
}
