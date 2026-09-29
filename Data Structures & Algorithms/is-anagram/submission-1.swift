class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var firstCompairing = [String: Int]()
        var secondCompairing = [String: Int]()

        for (index, item) in s.enumerated() {
            firstCompairing[String(item), default: 0] += 1
        }

        for (index, item) in t.enumerated() {
            secondCompairing[String(item), default: 0] += 1
        }

        if firstCompairing == secondCompairing {
            return true
        }

        return false
    }
}
