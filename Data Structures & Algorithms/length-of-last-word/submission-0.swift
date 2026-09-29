class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var arrayStr = Array(s.trimmingCharacters(in: .whitespacesAndNewlines))
        var counting: Int = 0
        var i: Int = 0

        arrayStr.reverse()

        while i < arrayStr.count {
            if arrayStr[i] == " " { break }
            counting += 1
            i += 1
        }

        return counting
    }
}
