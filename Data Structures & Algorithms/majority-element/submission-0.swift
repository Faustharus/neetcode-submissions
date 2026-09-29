class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var majority = [Int: Int]()

        for (index, num) in nums.enumerated() {
            majority[num, default: 0] += 1
        }

        let sorting = majority.sorted(by: { $0.value > $1.value })

        return Array(arrayLiteral: sorting[0].key).first ?? 0
    }
}
