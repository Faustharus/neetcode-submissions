class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var prefixVal = Array(repeating: 1, count: nums.count)
        var suffixVal = Array(repeating: 1, count: nums.count)

        var product: Int = 1

        for i in 0 ..< nums.count {
            prefixVal[i] = product
            product *= nums[i]
        }
        product = 1

        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            suffixVal[i] = product
            product *= nums[i]
        }

        for i in 0 ..< nums.count {
            result.append(prefixVal[i] * suffixVal[i])
        }

        return result
    }
}
