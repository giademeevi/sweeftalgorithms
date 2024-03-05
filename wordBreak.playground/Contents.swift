func wordBreak(_ s: String, _ words: [String]) -> Bool {
    var table = Array(repeating: false, count: s.count + 1)
    table[0] = true
    
    for i in 0..<table.count {
        guard table[i] else { continue }
        let slice = s.dropFirst(i)
        
        for word in words {
            guard slice.hasPrefix(word) else { continue }
            table[i + word.count] = true
        }
    }
    
    return table[s.count]
}
