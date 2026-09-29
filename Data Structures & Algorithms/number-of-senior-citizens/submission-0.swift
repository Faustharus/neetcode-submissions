class Solution {
    func countSeniors(_ details: [String]) -> Int {
        var result: Int = 0

        for detail in details {
            let ageAndSeat = detail.suffix(4)
            var age = Int(ageAndSeat.prefix(2)) ?? 0
            if age > 60 {
                result += 1
            }
        }

        return result
    }
}
