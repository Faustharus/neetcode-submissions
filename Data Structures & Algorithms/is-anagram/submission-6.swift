class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var first = [String: Int]()
        var second = [String: Int]()

        for (index, item) in s.enumerated() {
            first[String(item), default: 0] += 1
        }

        for (index, item) in t.enumerated() {
            second[String(item), default: 0] += 1
        }

        if first == second {
            return true
        }

        return false
    }
}
