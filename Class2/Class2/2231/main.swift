import Foundation

let N = Int(readLine()!)!
var res = 1

for i in 0 ..< N{
    var temp = i
    var sum = 0
    while( temp != 0){
        sum += temp % 10
        temp /= 10
    }
    if (sum + i == N){
        res = i
        break
    }
}
print(res)
