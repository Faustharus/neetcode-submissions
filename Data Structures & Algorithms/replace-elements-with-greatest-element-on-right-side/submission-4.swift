class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var maxRight: Int = 0
        var result = [Int]()
        var left: Int = 0
        var right: Int = result.count - 1

        for index in stride(from: arr.count - 1, to: 0, by: -1) {
            maxRight = max(maxRight, arr[index])
            result.insert(maxRight, at: 0)
        }
        result.append(-1)

        while left < right {
            result.swapAt(right, left)
            left += 1
            right -= 1
        }

        return result
    }
}
