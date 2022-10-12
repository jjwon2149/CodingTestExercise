//import Foundation
//
//public struct Stack<T>{
//    private var elements = [T]()
//    public init() {}
//
//    public mutating func push(_ element: T){
//        self.elements.append(element)
//    }
//
//    public mutating func pop() -> T? {
//        let pop = self.elements.popLast()
//        self.elements.removeLast()
//        return pop
//    }
//
//    public mutating func poplast() {
//        self.elements.removeLast()
//    }
//
//    public func top() -> T? {
//            return self.elements.last
//        }
//}
//
//var myStack = Stack<Int>()
//var ansArr : [String] = []
//var cnt = 1
//
//let input = Int(readLine()!)!
//
//for _ in 0 ..< input {
//    let num = Int(readLine()!)!
//
//    while cnt <= num{
//        myStack.push(cnt)
//        ansArr.append("+")
//        cnt += 1
//    }
//
//    if myStack.top() == num{
//        myStack.poplast()
//        ansArr.append("-")
//    }else{
//        print("NO")
//        exit(0)
//    }
//}
//
//print(ansArr.joined(separator: "\n"))
//
//
//
