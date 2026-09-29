class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var prefixValues = Array(repeating: 1, count: nums.count)
        var suffixValues = Array(repeating: 1, count: nums.count)
        var product: Int = 1

        for (index, num) in nums.enumerated() {
            prefixValues[index] = product
            product *= num
        }
        product = 1

        for index in stride(from: nums.count - 1, through: 0, by: -1) {
            suffixValues[index] = product
            product *= nums[index]
        }

        for index in 0 ..< nums.count {
            result.append(prefixValues[index] * suffixValues[index])
        }

        return result

    }
}
