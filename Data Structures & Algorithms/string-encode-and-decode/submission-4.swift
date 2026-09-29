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
        let chars = Array(str)
        var i: Int = 0

        while i < chars.count {
            // Find the #
            var j = i
            while j < chars.count && chars[j] != "#" {
                j += 1
            }
            
            // Extract the length
            let length = Int(String(chars[i ..< j]))!

            let start = j + 1
            let end = start + length
            let word = String(chars[start ..< end])

            result.append(word)

            i = end
        }

        return result
    }
}
