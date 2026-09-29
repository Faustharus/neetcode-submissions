class Solution {
    func scoreOfString(_ s: String) -> Int {
        var chars = Array(s)
        var result = [Int]()
        var i: Int = 0

        while i < chars.count - 1 {
            var j = i
            while j < chars.count - 1 && j <= i {
                j += 1
            }
            result.append(abs( Int(chars[j].asciiValue ?? 0) - Int(chars[i].asciiValue ?? 0) ))

            i += 1
        }

        return result.reduce(0, +)
    }
}
