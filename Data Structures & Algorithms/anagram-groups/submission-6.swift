class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var seen = [String: [String]]()

        for (index, str) in strs.enumerated() {
            let alphaKeys = String(str).sorted(by: { $0 < $1 })
            seen[String(alphaKeys), default: []] += [str]
        }

        return Array(seen.values)
    }
}
