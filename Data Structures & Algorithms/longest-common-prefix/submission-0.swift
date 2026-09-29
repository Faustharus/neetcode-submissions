class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefixWord = strs[0]

        for str in strs {
            while !str.hasPrefix(prefixWord) {
                prefixWord = String(prefixWord.dropLast())
            }
        }

        return prefixWord.isEmpty ? "" : prefixWord
    }
}
