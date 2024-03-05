class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var i = 0
        var chars = [Character: Int]()
        var longest = 0
        
        for (index, char) in s.enumerated() {
            
            if let count = chars[char]  {
                i = max(count + 1, i)
            }
            
            chars[char] = index
            longest = max(index - i + 1, longest)
            
        }
        
        return longest
    }
}
