import Foundation

public struct Queue<T>{
    private var elements = [T]()
    public init() {}
    
    public mutating func push(_ element: T){
        self.elements.append(element)
    }
    
    public mutating func pop() -> T? {
        if self.elements.isEmpty{
            return ( -1 as! T)
        }else{
            let pop = self.elements.first
            self.elements.remove(at: 0)
            return pop
        }
    }
    
    public func empty() -> Bool {
        return self.elements.isEmpty
    }
    
    public var size: Int {
        return self.elements.count
    }
    
    public mutating func front() -> T? {
        if self.elements.isEmpty{
            return (-1 as! T)
        }else{
            return self.elements.first //맨앞정수
        }
    }
    public mutating func back() -> T? {
        if self.elements.isEmpty{
            return (-1 as! T)
        }else{
            return self.elements.last //맨뒤정수
        }
    }
}

var myQueue = Queue<Int>()
let input = Int(readLine()!)!

for _ in 1...input {
    let a = readLine()!.split(separator: " ")
    switch String(a[0]) {
    case "push":
        myQueue.push(Int(a[1])!)
    case "pop":
        print(myQueue.pop()!)
    case "size":
        print(myQueue.size)
    case "empty":
        if myQueue.empty() == false{
            print(0)
        }else{
            print(1)
        }
    case "front":
        print(myQueue.front()!)
    case "back":
        print(myQueue.back()!)
    default:
        break
    }
}


