/*
 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

 push(x) -- Push element x onto stack.
 pop() -- Removes the element on top of the stack.
 top() -- Get the top element.
 getMin() -- Retrieve the minimum element in the stack.
  

 Example 1:

 Input
 ["MinStack","push","push","push","getMin","pop","top","getMin"]
 [[],[-2],[0],[-3],[],[],[],[]]

 Output
 [null,null,null,null,-3,null,0,-2]

 Explanation
 MinStack minStack = new MinStack();
 minStack.push(-2);
 minStack.push(0);
 minStack.push(-3);
 minStack.getMin(); // return -3
 minStack.pop();
 minStack.top();    // return 0
 minStack.getMin(); // return -2
 */


class ListNode<T> {

    var next: ListNode?
    var value: T
    var min: T
    
    init(value: T, min: T, next: ListNode? = .none) {
        self.value = value
        self.min = min
        self.next = next
    }
    
}

class MinStack {
    private var head: ListNode<Int>!
    
    func push(_ value: Int) {
        if head == nil {
            head = ListNode(value: value, min: value)
        } else {
            head = ListNode(value: value, min: min(head.min, value), next: head)
        }
    }
    
    func pop() {
        head = head.next
    }
    
    func top() -> Int {
        return head.value
    }
    
    func getMin() -> Int {
        return head.min
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
