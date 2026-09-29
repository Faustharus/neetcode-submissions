class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result = [String: [String]]()

        for (index, word) in strs.enumerated() {
            let alphaKeys = String(word).sorted(by: { $0 < $1 })
            result[String(alphaKeys), default: []] += [word]
        }

        return Array(result.values)
    }
}
