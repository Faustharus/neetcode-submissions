class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        guard !nums1.isEmpty else { return [] }
        guard !nums2.isEmpty else { return [] }

        var nums1Set = Set(nums1)
        var nums2Set = Set(nums2)

        return Array(nums1Set.intersection(nums2Set))
    }
}
