class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        guard n > 0 else { return true }

        var copied = flowerbed
        var i: Int = 0
        var counting: Int = 0

        while i < copied.count {    
            if copied[i] == 0 && (i == 0 || copied[i - 1] == 0) && (i == copied.count - 1 || copied[i + 1] == 0) {
                copied[i] += 1
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
