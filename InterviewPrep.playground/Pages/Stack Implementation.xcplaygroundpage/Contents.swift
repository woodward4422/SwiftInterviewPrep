struct Stack{
    private var items = [Int]()
    private var maxes = [Int]()
    
    mutating func push(item: Int){
        if isEmpty(){
            self.maxes.append(item)
            self.items.append(item)
            return
        }

        if item >= self.maxes.last! {
            self.maxes.append(item)
        }
        self.items.append(item)
    }
    mutating func pop(){
        if isEmpty(){
            return
        }
        
        if self.items.last! == self.maxes.last!{
            self.maxes.removeLast()
        }
        self.items.removeLast()
    }
    func peek() -> Int{
        if isEmpty(){
            fatalError("The Stack is empty!")
        }
        return self.items[self.items.count - 1]
    }
    
    func isEmpty() -> Bool{
        if self.items.count == 0 {
            return true
        }
        return false
    }
    
    func max() -> Int{
        if isEmpty(){
            fatalError("Stack Is Empty")
        }
        return self.maxes.last!
    }
}

var stack = Stack()
stack.push(item: 5)
stack.push(item: 10)
stack.push(item: 7)
stack.pop()
stack.pop()
stack.pop()
stack.max()
stack.push(item: 11)
stack.max()


