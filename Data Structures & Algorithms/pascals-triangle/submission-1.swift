class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle = [[Int]]()

        for i in 0 ..< numRows {
            var rowLine = [Int]()
            for j in 0 ... i {
                if j == 0 || i == j {
                    rowLine.append(1)
                } else {
                    var previousLine = triangle[i - 1]
                    var newLine = previousLine[j - 1] + previousLine[j]
                    rowLine.append(newLine)
                }
            }
            triangle.append(rowLine)
        }

        return triangle
    }
}
