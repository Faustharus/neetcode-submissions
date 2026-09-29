class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        var substrings = [String]()

        for i in 0 ..< words.count {
            for j in i + 1 ..< words.count {
                if words[i].contains(words[j]) {
                    substrings.append(words[j])
                }
                if words[j].contains(words[i]) {
                    substrings.append(words[i])
                }
            }
        }

        return Array(Set(substrings))
    }
}
