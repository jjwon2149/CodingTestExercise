import Foundation

struct Member{
    var name : String
    var age : Int
    var index : Int
    
}

let num = Int(readLine()!)!
var member : [Member] = []

for i in 0 ..< num {
    let input = readLine()!.split(separator: " ").map { a in String(a) }
    let A = Member(name: input[1], age: Int(input[0])!, index: i)
    member.append(A)
}

member.sort { a, b in a.age == b.age ? a.index < b.index : a.age < b.age }

for i in 0..<num{
    print("\(member[i].age) \(member[i].name)")
}
