class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var firstWord = [String: Int]()
        var secondWord = [String: Int]()
        
        for (index, char) in s.enumerated() {
            firstWord[String(char), default: 0] += 1
        }

        for (index, char) in t.enumerated() {
            secondWord[String(char), default: 0] += 1
        }

        if firstWord == secondWord {
            return true
        }

        return false
    }
}
