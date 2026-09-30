class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        guard n > 0 else { return true }

        var i: Int = 0
        var bed = flowerbed
        var counting: Int = 0

        while i < bed.count {
            if bed[i] == 0 && (i == 0 || bed[i - 1] == 0) && (i == bed.count - 1 || bed[i + 1] == 0) {
                bed[i] += 1
                counting += 1

                if counting == n { return true }

                i += 2
            } else {
                i += 1
            }
        }

        return false
    }
}
