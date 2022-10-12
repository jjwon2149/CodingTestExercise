import Foundation

let num = Double(readLine()!)!
let input = readLine()!.split(separator: " ").map{Double(String($0))!}

let score = input.max()!
let res = input.map { $0 / score * 100 }
var sum = 0.0
for i in res{
    sum += i
}
print(sum / num)
