import Foundation

let input = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Int($0)! }
var prime = true
var num = 0

for i in 0 ..< arr.count{
    if arr[i] == 1 {
        prime = false
    }else{
        for j in 2..<arr[i]{
                if(arr[i] % j == 0){
                    prime = false
                }
        }
    }
    if prime == true{
        num += 1
    }
    prime = true
}
print(num)
