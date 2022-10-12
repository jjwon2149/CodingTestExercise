import Foundation

let input = Int(readLine()!)!
var arr : [String] = []

for _ in 0 ..< input {
    arr.append(readLine()!)
}
arr = Array(Set(arr).sorted(by: {$0<$1}).sorted(by: {$0.count<$1.count}))

for i in arr{
    print(i)
}
