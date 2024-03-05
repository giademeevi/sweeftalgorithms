func minMeetingRooms(_ intervals: [[Int]]) -> Int {
    let sorted = intervals.sorted { $0[0] < $1[0] }
    var rooms = 1
    
    for i in 0..<sorted.count - 1 {
        let currentMeetingEnd = sorted[i][1]
        let nextMeetingStart = sorted[i + 1][0]
        
        if currentMeetingEnd > nextMeetingStart {
            rooms += 1
        }
    }
    
    return rooms
}
