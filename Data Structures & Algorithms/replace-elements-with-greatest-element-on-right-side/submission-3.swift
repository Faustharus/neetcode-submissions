class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var maxRight: Int = 0
        var result = [Int]()

        for index in stride(from: arr.count - 1, to: 0, by: -1) {
            maxRight = max(maxRight, arr[index])
            result.append(maxRight)
        }
        result.append(-1)

        return result.sorted(by: { $0 > $1 })
    }
}
