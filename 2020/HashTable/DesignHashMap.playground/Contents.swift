/*

 Design a HashMap without using any built-in hash table libraries.

 To be specific, your design should include these functions:

 put(key, value) : Insert a (key, value) pair into the HashMap. If the value already exists in the HashMap, update the value.
 get(key): Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key.
 remove(key) : Remove the mapping for the value key if this map contains the mapping for the key.

 Example:

 MyHashMap hashMap = new MyHashMap();
 hashMap.put(1, 1);
 hashMap.put(2, 2);
 hashMap.get(1);            // returns 1
 hashMap.get(3);            // returns -1 (not found)
 hashMap.put(2, 1);          // update the existing value
 hashMap.get(2);            // returns 1
 hashMap.remove(2);          // remove the mapping for 2
 hashMap.get(2);            // returns -1 (not found)
 
 
 */



class MyHashMap {

    init() {}
    
    var dict:[Int:Int] = [:]

    func put(_ key: Int, _ value: Int) {
        dict[key] = value
    }
    

    func get(_ key: Int) -> Int {
        if dict[key] == nil{
            return -1
        }else{
            return dict[key]!
        }
        
    }

    func remove(_ key: Int) {
        dict[key] = nil
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
 let hashMap = MyHashMap()


hashMap.put(1, 1)
hashMap.put(2, 2)
print(hashMap.get(1))            // returns 1
print(hashMap.get(3))            // returns -1 (not found)
hashMap.put(2, 1)          // update the existing value
print(hashMap.get(2))            // returns 1
hashMap.remove(2)          // remove the mapping for 2
print(hashMap.get(2))            // returns -1 (not found)
