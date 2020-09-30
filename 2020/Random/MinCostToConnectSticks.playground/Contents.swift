/*
 you have some positive integers sticks
 
 connect sticks of length X and Y is cost X+Y
 
 What is the min cost of connecting sticks
 
 
 input: sticks = [2,3,4]
 outpus: 14
 
 
 input: sticks = [1,8,3,5]
 output: 30
 
 
 */


// just always take the smallest stick

class Solution{
    func connectSticks(_ sticks:[Int])->Int{
        
        var cost = 0
        
        var minHeap:MinHeap<Int> = MinHeap<Int> {$0 < $1}
        
        
        for i in sticks{
            
            minHeap.push()
            
            
        }
        
        while minHeap.count>0{
            let x = minHeap.pop()
            let y = minHeap.pop()
            let sum = x+y
            count = count + sum
            minHeap.push(sum)
            
            
        }
        
        return count
    }
}


struct MinHeap<T>{
    private func getLeftChildIndex(_ parentIndex:Int) -> Int{
        
    }
    
    
}


let solution = Solution()


print(solution.connectSticks([2,3,4]))
