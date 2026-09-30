class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var result = [Int]()
        var maxVal: Int = 0

        for i in stride(from: arr.count - 1, to: 0, by: -1) {
            maxVal = max(maxVal, arr[i])
            result.append(maxVal)
        }
        result.append(-1)

        var sortedArr = result.sorted(by: { $0 > $1 })

        return sortedArr
    }
}
