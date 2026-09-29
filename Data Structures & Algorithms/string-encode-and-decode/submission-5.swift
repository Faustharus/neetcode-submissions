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
        var i: Int = 0
        var chars = Array(str)

        while i < chars.count {
            var j = i
            while chars[j] != "#" && j < chars.count {
                j += 1
            }

            var lengthStr = Int(String(chars[i ..< j])) ?? 0

            var start: Int = j + 1
            var end: Int = start + lengthStr
            var word = String(chars[start ..< end])

            result.append(word)

            i = end
        }

        return result
    }
}
