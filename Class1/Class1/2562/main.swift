import Foundation

var input :[Int] = []

for _ in 0...8{
    input.append(Int(readLine()!)!)
}
var res = 0
var num = 0

res = input.max()!

print(res)

if let firstIndex = input.firstIndex(of: res){
    print(firstIndex+1)
}
