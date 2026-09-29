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
        var index: Int = 0
        var chars = Array(str)

        while index < chars.count - 1 {
            var j = index
            while j < chars.count - 1 && chars[j] != "#" {
                j += 1
            }

            let length = Int(String(chars[index ..< j])) ?? 0

            var start = j + 1
            var end = start + length
            var word = String(chars[start ..< end])

            result.append(word)

            index = end
        }

        return result
    }
}
