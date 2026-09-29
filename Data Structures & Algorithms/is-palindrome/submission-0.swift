class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let trimmedStr = s
            .replacingOccurrences(of: "[^a-zA-Z0-9]+", with: "", options: .regularExpression).lowercased()

        let arrStr = trimmedStr.compactMap({ String($0) })

        var left: Int = 0
        var right: Int = arrStr.count - 1

        while left < right {
            if arrStr[left] == arrStr[right] {
                left += 1
                right -= 1
            } else {
                return false
            }
        }
        return true
    }
}
