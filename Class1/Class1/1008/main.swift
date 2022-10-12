import Foundation
 
let input = readLine()!.split(separator: " ").map{Double(String($0))!}

var res : Double  = input[0] / input[1]

print(res)
