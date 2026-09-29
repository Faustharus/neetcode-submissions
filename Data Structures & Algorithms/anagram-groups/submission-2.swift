class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result = [String: [String]]()

        for (index, char) in strs.enumerated() {
            var alphaKeys = String(char).sorted(by: { $0 < $1 })
            result[String(alphaKeys), default: []] += [char]
        }

        return Array(result.values)
    }
}
