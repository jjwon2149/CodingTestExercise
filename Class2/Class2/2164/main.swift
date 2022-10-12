class Queue<T> {
    var enQueue: [T]
    var deQueue: [T] = []
    
    var count: Int {
        return enQueue.count + deQueue.count
    }
    
    var isEmpty: Bool {
        return enQueue.isEmpty && deQueue.isEmpty
    }
    
    init(_ queue: [T]) {
        self.enQueue = queue
    }
    
    func push(_ element: T) {
        enQueue.append(element)
    }
    
    func pop() -> T {
        if deQueue.isEmpty {
            deQueue = enQueue.reversed()
            enQueue.removeAll()
        }
        return deQueue.popLast()!
    }
    
}

let input = Int(readLine()!)!
var arr = [Int](1...input)
var myQueue = Queue<Int>(arr)


for _ in 1 ..< input{
    let _ = myQueue.pop()
    myQueue.push(myQueue.pop())
}
print(myQueue.pop())
