/*
 Design a data structure that follows the constraints of a Least Recently Used (LRU) cache.

 Implement the LRUCache class:

 LRUCache(int capacity) Initialize the LRU cache with positive size capacity.
 int get(int key) Return the value of the key if the key exists, otherwise return -1.
 void put(int key, int value) Update the value of the key if the key exists. Otherwise, add the key-value pair to the cache. If the number of keys exceeds the capacity from this operation, evict the least recently used key.
 Follow up:
 Could you do get and put in O(1) time complexity?

  

 Example 1:

 Input
 ["LRUCache", "put", "put", "get", "put", "get", "put", "get", "get", "get"]
 [[2], [1, 1], [2, 2], [1], [3, 3], [2], [4, 4], [1], [3], [4]]
 Output
 [null, null, null, 1, null, -1, null, -1, 3, 4]

 Explanation
 LRUCache lRUCache = new LRUCache(2);
 lRUCache.put(1, 1); // cache is {1=1}
 lRUCache.put(2, 2); // cache is {1=1, 2=2}
 lRUCache.get(1);    // return 1
 lRUCache.put(3, 3); // LRU key was 2, evicts key 2, cache is {1=1, 3=3}
 lRUCache.get(2);    // returns -1 (not found)
 lRUCache.put(4, 4); // LRU key was 1, evicts key 1, cache is {4=4, 3=3}
 lRUCache.get(1);    // return -1 (not found)
 lRUCache.get(3);    // return 3
 lRUCache.get(4);    // return 4
 */


class LRUCache {
    
    class LinkNode {
        var key: Int
        var value: Int
        var next: LinkNode?
        var prev: LinkNode?
        
        init(_ key: Int, _ value: Int) {
            self.key = key
            self.value = value
        }
    }
    
    let capacity: Int
    // The number of values currently being stored
    private var usage = 0
    private var dictNode = [Int: LinkNode]()
    // The most recently used node
    private var head: LinkNode?
    // The least recently used node
    private var tail: LinkNode?
    
    init(_ capacity: Int) {
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int {
//        guard let node = elements[key] else {
//            return -1
//        }
        
        if dictNode[key] == nil{
            return -1
        }
        let current = dictNode[key]
        moveNodeToHead(current!)
        
        return current!.value
    }
    
    func put(_ key: Int, _ value: Int) {
        // Key already exists
        if let existing = dictNode[key] {
            existing.value = value
            moveNodeToHead(existing)
        }
        // Add new key
        else if usage < capacity {
            let node = LinkNode(key, value)
            dictNode[key] = node
            if head != nil {
                head!.next = node
                node.prev = head
                head = node
            }
            else {
                head = node
            }
            if tail == nil {
                tail = node
            }
            usage += 1
        }
        // Replace least-used key
        else if tail != nil {
            dictNode[tail!.key] = nil
            tail!.key = key
            tail!.value = value
            dictNode[key] = tail
            moveNodeToHead(tail!)
        }
    }
    
    // Moves `node` to the head of the usage list
    private func moveNodeToHead(_ node: LinkNode) {
        if node.next != nil{
            let next = node.next
            node.next = nil
            next!.prev = nil
            
            if node.prev != nil{
                let prev = node.prev
                node.prev = nil
                prev!.next = next
                next!.prev = prev
            }
            else if tail === node {
                tail = next
            }
            
            if head != nil {
                node.prev = head
                head!.next = node
            }
            
            head = node
        }
        
      
         
        
    }
}





/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */
