class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        var result = Set<String>()

        for i in 0 ..< words.count {
            for j in i + 1 ..< words.count {
                if words[i].contains(words[j]) {
                    result.insert(words[j])
                }
                if words[j].contains(words[i]) {
                    result.insert(words[i])
                }
            }
        }
        return Array(result)
    }
}
