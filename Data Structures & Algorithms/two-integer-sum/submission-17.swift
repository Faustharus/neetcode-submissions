class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexedNums = nums.enumerated().map {
            (index: $0.element, value: $0.offset)
        }
        indexedNums.sort(by: { $0.index < $1.index })

        var left: Int = 0
        var right: Int = nums.count - 1
        var result = [Int]()

        while left < right {
            let currentNum = indexedNums[left].index + indexedNums[right].index

            if currentNum == target {
                let idx1 = indexedNums[left].value 
                let idx2 = indexedNums[right].value
                result.append(contentsOf: [idx1, idx2])
                return result.sorted()
            } else if currentNum < target {
                left += 1
            } else {
                right -= 1
            }
        }

        return []
    }
}
