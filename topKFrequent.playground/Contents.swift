func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var freq: [Int: Int] = [:]
    nums.forEach { freq[$0, default: 0] += 1 }
    
    let sortedFreq = freq.sorted { $0.value > $1.value }
    return sortedFreq[0..<k].map { $0.key }
}
