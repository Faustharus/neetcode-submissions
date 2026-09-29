class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = Set<[Int]>()
        var sortedNums = nums.sorted()

        for i in 0 ..< (sortedNums.count - 1) {
            if i > 0 && sortedNums[i] == sortedNums[i - 1] {
                continue
            }

            let target = (-sortedNums[i])
            var left: Int = i + 1
            var right: Int = sortedNums.count - 1

            while left < right {
                let threeSum = sortedNums[left] + sortedNums[right]
                if threeSum > target {
                    right -= 1
                } else if threeSum < target {
                    left += 1
                } else {
                    result.insert([-target, sortedNums[left], sortedNums[right]])
                    left += 1
                    while left < right && sortedNums[left] == sortedNums[left - 1] {
                        left += 1
                    }
                }
            }
        }
        return Array(result)
    }
}
