class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }

        var cleanedNums = Set(nums)
        var longest: Int = 0

        for num in cleanedNums {
            if !cleanedNums.contains(num - 1) {
                var currentNum = num
                var length: Int = 1

                while cleanedNums.contains(currentNum + 1) {
                    currentNum += 1
                    length += 1
                }
                longest = max(longest, length)
            }
        }
        return longest
    }
}
