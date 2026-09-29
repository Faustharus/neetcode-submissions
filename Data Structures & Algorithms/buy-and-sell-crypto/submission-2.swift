class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var currentPrice: Int = prices[0]
        var maxSum: Int = 0

        for index in 0 ..< prices.count {
            currentPrice = min(currentPrice, prices[index])
            maxSum = max(maxSum, prices[index] - currentPrice)
        }

        return maxSum
    }
}
