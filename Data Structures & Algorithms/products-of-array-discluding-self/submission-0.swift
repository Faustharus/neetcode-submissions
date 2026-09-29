class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var prefixValues = Array(repeating: 1, count: nums.count)
        var suffixValues = Array(repeating: 1, count: nums.count)

        var product: Int = 1

        for i in 0 ..< nums.count {
            prefixValues[i] = product
            product *= nums[i]
        }
        product = 1

        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            suffixValues[i] = product
            product *= nums[i]
        }

        for i in 0 ..< nums.count {
            result.append(prefixValues[i] * suffixValues[i])
        }

        return result
    }
}
