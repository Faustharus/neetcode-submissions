class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var firstSentence = [String: Int]()
        var secondSentence = [String: Int]()

        for char in s {
            firstSentence[String(char), default: 0] += 1
        }

        for char in t {
            secondSentence[String(char), default: 0] += 1
        }

        if firstSentence == secondSentence { return true }

        return false
    }
}
