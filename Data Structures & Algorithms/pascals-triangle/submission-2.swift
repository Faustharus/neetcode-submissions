class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle = [[Int]]()

        for i in 0 ..< numRows {
            var line = [Int]()
            for j in 0 ... i {
                if j == i || j == 0 {
                    line.append(1)
                } else {
                    var previous = triangle[i - 1]
                    var sumLine = previous[j - 1] + previous[j]
                    line.append(sumLine)
                }
            }
            triangle.append(line)
        }
        return triangle
    }
}
