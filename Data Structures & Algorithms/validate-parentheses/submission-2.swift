class Solution {
    func isValid(_ s: String) -> Bool {
        var result = [Character]()
        let matchingCharacters: [Character: Character] = [")": "(", "]": "[", "}": "{"]

        for char in s {
            if char == "(" || char == "{" || char == "[" {
                result.append(char)
            } else if char == ")" || char == "}" || char == "]" {
                if result.isEmpty { return false }
                let lastChar = result.removeLast()
                if matchingCharacters[char] != lastChar {
                    return false
                }
            }
        }
        return result.isEmpty
    }
}
