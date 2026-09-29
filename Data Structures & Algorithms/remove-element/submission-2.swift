class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            if val == nums[i] {
                nums.remove(at: i)
            }
        }

        return nums.count
    }
}
