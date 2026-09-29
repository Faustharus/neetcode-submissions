class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left: Int = 0
        var right: Int = numbers.count - 1
        //var result = [Int]()

        while left < right {
            let sum = numbers[left] + numbers[right]
            if target == sum {
                return [left + 1, right + 1]
            }

            if sum > target {
                right -= 1
            } else {
                left += 1
            }
        }

        return []
    }
}
