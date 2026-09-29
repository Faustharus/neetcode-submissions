class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var i: Int = 0
        var result = [Int]()

        while i < nums1.count {
            var curr: Int = nums1[i]
            var nextGreater: Int = -1
            for j in stride(from: nums2.count - 1, through: 0, by: -1) {
                if nums2[j] > curr {
                    nextGreater = nums2[j]
                } else if nums2[j] == curr {
                    break
                }
            }
            result.append(nextGreater)
            i += 1
        }

        return result
    }
}
