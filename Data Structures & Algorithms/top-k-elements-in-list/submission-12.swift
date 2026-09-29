class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var result = [Int]()
        var freq = [Int: Int]()

        for (index, num) in nums.enumerated() {
            freq[num, default: 0] += 1
        }

        var sortedFreq = freq.sorted(by: { $0.value > $1.value })

        for i in 0 ..< k {
            result.append(sortedFreq[i].key)
        }

        return result
    }
}
