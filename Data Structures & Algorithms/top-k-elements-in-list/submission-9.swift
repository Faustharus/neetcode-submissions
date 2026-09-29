class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        guard !nums.isEmpty || k != 0 else { return [] }

        var seen = [Int: Int]()
        var result = [Int]()

        for num in nums {
            seen[num, default: 0] += 1
        }

        let sortedSeen = seen.sorted(by: { $0.value > $1.value })

        for i in 0 ..< k {
            result.append(sortedSeen[i].key)
        }

        return result.sorted()
    }
}
