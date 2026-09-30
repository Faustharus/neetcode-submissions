class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var result = [Int]()
        var maxVal: Int = 0
        var left: Int = 0
        var right: Int = result.count - 1

        for i in stride(from: arr.count - 1, to: 0, by: -1) {
            maxVal = max(maxVal, arr[i])
            result.insert(maxVal, at: 0)
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
