class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = Array(repeating: Set<Character>(), count: 9)
        var columns = Array(repeating: Set<Character>(), count: 9)
        var boxes = Array(repeating: Set<Character>(), count: 9)

        for row in 0 ..< board.count {
            for col in 0 ..< board[row].count {
                let value = board[row][col]

                if value == "." { continue }

                var box = (row / 3) * 3 + (col / 3)

                // At least 2 values that are the same have been detected
                if rows[row].contains(value) || columns[col].contains(value) || boxes[box].contains(value) { return false }

                rows[row].insert(value)
                columns[col].insert(value)
                boxes[box].insert(value)
            }
        }
        return true
    }
}
