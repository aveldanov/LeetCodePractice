/*
 A company is performing an analysis on the computers at its main office. The computers are spaced along a single row. The analysis is performed in the following way:

 1. Choose a contiguous segment of a certain number of computers, starting from the beginning of the row.
 2. Analyze the available hard disk space on each of the computers.
 3. Determine the minimum available disk space within this segment.

 After performing these steps for the first segment, it is then repeated for the next segment, continuing this procedure until the end of the row (i.e if the segment is 4, computers 1 to 4 would be analyzed, then 2 to 5, etc...) Given this analysis procedure, find the maximum available disk space among all the minima that are found during analysis

 Example
 n = 3, the number of computers
 space = [8, 2, 4]
 x = 2, the length of analysis segments

 In this array of computers, the subarrays of size 2 are [8, 2] and [2, 4]. Thus, the initial analysis returns 2 and 2 because those are the minima for the segments. Finally, the maximum of these values is 2. Therefore, the answer is 2.
 
 
 */



func discSpaceAnalisys(x:Int, space:[Int])->Int{
    var partition = [Int]()
    var result = Int.max
    for i in 0..<space.count{
        
        if i+x<=space.count{
            print(space[i..<i+x])
            let part = space[0..<i+x].sorted()
            let minPart = part[0]
            if minPart<result{
                result = minPart
            }
        }

        
    }
    
    return result
}


discSpaceAnalisys(x: 2, space: [8, 2, 4])
