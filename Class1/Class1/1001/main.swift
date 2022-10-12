import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}

var res = input[0] - input[1]

print(res)
