class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        // Reference the first word
        var prefixWord = strs[0]

        for str in strs {
            // As long as `str` isn't equal to the prefixWord
            // it removes the last letter, until it equals it
            while !str.hasPrefix(prefixWord) {
                prefixWord = String(prefixWord.dropLast())
            }
        }

        return prefixWord.isEmpty ? "" : prefixWord
    }
}
