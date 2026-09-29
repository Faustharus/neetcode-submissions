class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        var sortDict = [Int: String]()
        var result = [String]()

        for (index, height) in heights.enumerated() {
            sortDict[height, default: ""] = names[index]
        }

        let finalArray = sortDict.sorted(by: { $0.key > $1.key })

        result.append(contentsOf: finalArray.map({ $0.value }))

        return result
    }
}