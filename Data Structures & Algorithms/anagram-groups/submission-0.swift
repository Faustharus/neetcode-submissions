class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var freq = [String: [String]]()

        for (index, word) in strs.enumerated() {
            var alphaKeys = String(word).sorted(by: { $0 < $1 })
            freq[String(alphaKeys), default: []] += [word]
        }

        return Array(freq.values)
    }
}
