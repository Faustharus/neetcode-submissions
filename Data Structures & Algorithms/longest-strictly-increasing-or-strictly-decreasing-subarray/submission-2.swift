class Solution {
    func longestMonotonicSubarray(_ nums: [Int]) -> Int {
        if nums.isEmpty { return 0 }

        var maxLength: Int = 1
        var incLength: Int = 1
        var decLength: Int = 1

        for i in 0 ..< (nums.count - 1) {
            if nums[i + 1] > nums[i] {
                incLength += 1
                decLength = 1
            } else if nums[i + 1] < nums[i] {
                decLength += 1
                incLength = 1
            } else {
                incLength = 1
                decLength = 1
            }

            maxLength = max(maxLength, incLength, decLength)
        }

        return maxLength
    }
}
