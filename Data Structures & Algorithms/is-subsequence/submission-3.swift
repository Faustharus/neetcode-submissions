class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let firstStr = Array(s)
        let secondStr = Array(t)
        var indexFirst: Int = 0
        var indexSecond: Int = 0
        var result: String = ""

        while indexSecond < secondStr.count && indexFirst < firstStr.count {
            if firstStr[indexFirst] == secondStr[indexSecond] {
                result.append(firstStr[indexFirst])
                indexFirst += 1
                indexSecond += 1
            } else {
                indexSecond += 1
            }
        }

        return result == s ? true : false
    }
}
