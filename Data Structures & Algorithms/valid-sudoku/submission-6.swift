class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = Array(repeating: Set<Character>(), count: 9)
        var columns = Array(repeating: Set<Character>(), count: 9)
        var boxes = Array(repeating: Set<Character>(), count: 9)

        for row in 0 ..< board.count {
            for col in 0 ..< board[row].count {
                let value = board[row][col]

                if value == "." { continue }

                let box = (row / 3) * 3 + (col / 3)

                if rows[row].contains(value) || columns[col].contains(value) || boxes[box].contains(value) {
                    return false
                }

                rows[row].insert(value)
                columns[col].insert(value)
                boxes[box].insert(value)
            }
        }
        return true
    }
}
