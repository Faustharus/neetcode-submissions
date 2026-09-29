class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        var result = [String]()

        for i in 0 ..< words.count {
            for j in i + 1 ..< words.count {
                if words[i].contains(words[j]) {
                    result.append(words[j])
                }

                if words[j].contains(words[i]) {
                    result.append(words[i])
                }
            }
        }

        return Array(Set(result))
    }
}
