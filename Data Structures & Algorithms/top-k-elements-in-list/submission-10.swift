class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var frequence = [Int: Int]()
        var result = [Int]()

        for (index, num) in nums.enumerated() {
            frequence[num, default: 0] += 1 // [1: 1, 2: 2, 3: 3]
        }

        let sortedFreq = frequence.sorted(by: { $0.value > $1.value })

        for i in 0 ..< k { // k => Ce chiffre / nombre représente la limite de chiffre / nombre apparaissant le plus de fois dans le tableau
            result.append(sortedFreq[i].key)
        }

        return result
    }
}
