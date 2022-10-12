import Foundation


var N = Int(readLine()!)!
var arr = [(Int, Int)] ()
for _ in 0 ..< N{
    let input = readLine()!.split(separator: " ").map{Int($0)}
    arr.append((input[0]!, input[1]!))
}

arr.sort(by: {
    $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0
})

for i in 0 ..< N{
    print("\(arr[i].0) \(arr[i].1)")
}
