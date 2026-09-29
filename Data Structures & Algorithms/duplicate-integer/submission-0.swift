class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var seen = [Int: Int]()

        for (index, num) in nums.enumerated() {
            seen[num, default: 0] += 1
        }

        if seen.contains(where: { $0.value >= 2 }) {
            return true
        }
        
        return false
    }
}
