class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var duplicates = [Int: Int]()

        for num in nums {
            duplicates[num, default: 0] += 1
        }

        return duplicates.values.contains(where: { $0 >= 2 })
    }
}
