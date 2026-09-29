class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq = [Int: Int]()
        var result = [Int]()

        for num in nums {
            freq[num, default: 0] += 1
        }

        let sortedFreq = freq.sorted(by: { $0.value > $1.value })

        for i in 0 ..< k {
            result.append(sortedFreq[i].key)
        }

        return result.sorted(by: { $0 < $1 })
    }
}
