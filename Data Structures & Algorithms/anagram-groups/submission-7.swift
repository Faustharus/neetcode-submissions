class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagrams = [String: [String]]()

        for (index, str) in strs.enumerated() {
            let alphaKeys = String(str).sorted(by: { $0 < $1 })
            anagrams[String(alphaKeys), default: []] += [str]
        }

        return Array(anagrams.values)
    }
}
