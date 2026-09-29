class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = prices[0]
        var maxPrice: Int = 0

        for i in 0 ..< prices.count {
            minPrice = min(minPrice, prices[i])
            maxPrice = max(maxPrice, prices[i] - minPrice)
        }

        return maxPrice
    }
}
