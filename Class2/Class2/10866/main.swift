import Foundation

public struct Dequeue<T>{
    private var elements = [T]()
    public init() {}
    
    public mutating func push_front(_ element: T){
        self.elements.insert(element, at: 0)
    }
    
    public mutating func push_back(_ element: T){
        self.elements.append(element)
    }
    
    public mutating func pop_front() -> T? {
        if self.elements.isEmpty{
            return ( -1 as! T)
        }else{
            let pop = self.elements.first
            self.elements.remove(at: 0)
            return pop
        }
    }
    
    public mutating func pop_back() -> T? {
        if self.elements.isEmpty{
            return ( -1 as! T)
        }else{
            let pop = self.elements.last
            let size = (self.elements.count) - 1
            self.elements.remove(at: size)
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

var myDequeue = Dequeue<Int>()
let input = Int(readLine()!)!

for _ in 1...input {
    let a = readLine()!.split(separator: " ")
    switch String(a[0]) {
    case "push_front":
        myDequeue.push_front(Int(a[1])!)
    case "push_back":
        myDequeue.push_back(Int(a[1])!)
    case "pop_front":
        print(myDequeue.pop_front()!)
    case "pop_back":
        print(myDequeue.pop_back()!)
    case "size":
        print(myDequeue.size)
    case "empty":
        if myDequeue.empty() == false{
            print(0)
        }else{
            print(1)
        }
    case "front":
        print(myDequeue.front()!)
    case "back":
        print(myDequeue.back()!)
    default:
        break
    }
}
