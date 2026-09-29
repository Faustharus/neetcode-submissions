class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var firstStr = [String: Int]()
        var secondStr = [String: Int]()

        for (index, char) in s.enumerated() {
            firstStr[String(char), default: 0] += 1
        }

        for (index, char) in t.enumerated() {
            secondStr[String(char), default: 0] += 1
        }

        if firstStr == secondStr {
            return true
        }

        return false
    }
}
