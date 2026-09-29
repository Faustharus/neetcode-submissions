class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var seen = [Int: Int]()
        var result = [Int]()

        for num in nums {
            seen[num, default: 0] += 1
        }

        var sortedSeen = seen.sorted(by: { $0.value > $1.value })

        for i in 0 ..< k {
            result.append(sortedSeen[i].key)
        }

        return result
    }
}
