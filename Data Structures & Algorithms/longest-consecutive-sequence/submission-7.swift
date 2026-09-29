class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }

        var longest: Int = 0
        // Removes every possible duplicate, as those are useless in the situation
        var cleanedNums = Set(nums)

        for num in cleanedNums {
            // If it does not exist, it means that it just found the beggining of a new suite
            if !cleanedNums.contains(num - 1) {
                var currentNum = num
                var length: Int = 1

                // While the next number that is superior to 1 from the currentNum. It updates it, as well as the length
                while cleanedNums.contains(currentNum + 1) {
                    currentNum += 1
                    length += 1
                }
                // Compare the longest value from the current length
                longest = max(longest, length)
            }
        }
        return longest
    }
}
