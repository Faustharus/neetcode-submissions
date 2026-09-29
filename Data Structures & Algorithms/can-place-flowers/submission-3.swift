class Solution {
    func canPlaceFlowers(_ flowerBed: [Int], _ n: Int) -> Bool {
        guard n > 0 else { return true }

        var copied = flowerBed
        var counting: Int = 0
        var left: Int = 0
        var right: Int = 0

        for i in 0 ..< copied.count {
            if i == 0 {
                left = 0
            } else {
                left = copied[i - 1]
            }

            if i == copied.count - 1 {
                right = 0
            } else {
                right = copied[i + 1]
            }

            if copied[i] == 0 && left == 0 && right == 0 {
                copied[i] += 1
                counting += 1

                if counting == n {
                    print(copied)
                    return true
                }
            }
        }

        print(copied)
        return false
    }
}
