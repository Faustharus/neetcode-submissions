class Solution {
    func countSeniors(_ details: [String]) -> Int {
        var ageAndSeat = [String]()
        var result = [Int]()

        for detail in details {
            let suffixVal = detail.suffix(4)
            ageAndSeat.append(String(suffixVal))
        }

        for item in ageAndSeat {
            let extract = item.prefix(2)
            var converted = Int(String(extract)) ?? 0
            result.append(converted)
        }

        return result.filter({ $0 > 60 }).count
    }
}
