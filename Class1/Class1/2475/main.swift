import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var num  = 0

for i in input{
    num = num + Int(pow(Double(i), 2))
}

print(num % 10)
