class Solution {
    func getCharsOccurence(_ strs: String) -> [String: Int] {
        var seen = [String: Int]()

        for str in strs {
            seen[String(str), default: 0] += 1
        }

        return seen
    }

    func isAnagram(_ s: String, _ t: String) -> Bool {
        var firstSentence = getCharsOccurence(s)
        var secondSentence = getCharsOccurence(t)

        return firstSentence == secondSentence
    }
}
