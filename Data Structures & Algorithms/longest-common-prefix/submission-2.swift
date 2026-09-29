class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        var ref = strs[0]

        for str in strs {
            while !str.hasPrefix(ref) {
                ref = String(ref.dropLast())
            }
        }

        return ref.isEmpty ?  "" : ref
    }
}
