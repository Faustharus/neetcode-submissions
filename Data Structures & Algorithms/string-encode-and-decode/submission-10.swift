class Solution {

    func encode(_ strs: [String]) -> String {
        var result: String = ""

        for str in strs {
            result += "\(str.count)#\(str)"
        }

        return result
    }

    func decode(_ str: String) -> [String] {
        var result = [String]()
        var chars = Array(str)
        var i: Int = 0

        while i < chars.count {
            var j = i
            while j < chars.count && chars[j] != "#" {
                j += 1
            }

            let length = Int(String(chars[i ..< j])) ?? 0

            var start = j + 1
            var end = start + length
            var word = String(chars[start ..< end])

            result.append(word)

            i = end
        }
        return result
    }
}
