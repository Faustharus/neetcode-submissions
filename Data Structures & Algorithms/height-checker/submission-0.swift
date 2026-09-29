class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        var result: Int = 0
        var expected = heights.sorted(by: { $0 < $1 })

        for i in 0 ..< heights.count {
            if heights[i] != expected[i] {
                result += 1
            }
        }

        return result
    }
}