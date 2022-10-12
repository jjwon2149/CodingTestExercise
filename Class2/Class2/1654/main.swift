import Foundation

let Kn = readLine()!.split(separator: " ").map{Int(String($0))!}
let k = Kn.first!
let n = Kn.last!
var arr = [Int]()
for _ in 0..<k{
    arr.append(Int(String(readLine()!))!)
}

let Maxarr = arr.max()!
var start = 1
var end = Maxarr

while start <= end {
    var count = 0
    //mid는 자를수 있는 길이
    let mid = (start + end) / 2
    
    for i in 0..<k{
        count += (arr[i] / mid)
    }
    
    if count < n{
        end = mid - 1
    }else{
        start = mid + 1
    }
}
print(start - 1)
