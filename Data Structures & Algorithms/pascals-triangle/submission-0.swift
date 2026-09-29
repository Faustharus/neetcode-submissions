class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle = [[Int]]()

        for i in 0 ..< numRows {
            var newRow = [Int]()
            for j in 0 ... i {
                if j == 0 || i == j {
                    newRow.append(1)
                } else {
                    let previous = triangle[i - 1]
                    let row = previous[j - 1] + previous[j]
                    newRow.append(row)
                }
            }
            triangle.append(newRow)
        }
        return triangle
    }
}
