class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result = [String: [String]]()

        for (index, str) in strs.enumerated() {
            var alphaKeys = String(str).sorted(by: { $0 < $1 })
            result[String(alphaKeys), default: []] += [str]
        }

        return Array(result.values)
    }
}
