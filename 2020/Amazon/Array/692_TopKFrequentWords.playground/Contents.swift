/*
 Given a non-empty list of words, return the k most frequent elements.

 Your answer should be sorted by frequency from highest to lowest. If two words have the same frequency, then the word with the lower alphabetical order comes first.

 Example 1:
 Input: ["i", "love", "leetcode", "i", "love", "coding"], k = 2
 Output: ["i", "love"]
 Explanation: "i" and "love" are the two most frequent words.
     Note that "i" comes before "love" due to a lower alphabetical order.
 Example 2:
 Input: ["the", "day", "is", "sunny", "the", "the", "the", "sunny", "is", "is"], k = 4
 Output: ["the", "is", "sunny", "day"]
 Explanation: "the", "is", "sunny" and "day" are the four most frequent words,
     with the number of occurrence being 4, 3, 2 and 1 respectively.
 */


class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var dict = [String:Int]()
        var result = [String]()
        for item in words{
            dict[item] = dict[item] == nil ? 1 : dict[item]!+1
            
        }
        
        let sorted = dict.sorted{$0.0 < $1.0}.sorted{$0.1 > $1.1}
        var j = 0
        for (key, value) in sorted{
            if j<k {
                result.append(key)
            }
            j+=1
        }
        return result
    }
}

let soluton = Solution()

soluton.topKFrequent(["i", "love", "leetcode", "i", "love", "coding"], 2)
