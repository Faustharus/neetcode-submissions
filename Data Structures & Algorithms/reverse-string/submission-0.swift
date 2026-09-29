class Solution {
    func reverseString(_ s: inout [Character]) {
        var left: Int = 0
        var right: Int = s.count - 1

        while left < right {
            s.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
}
