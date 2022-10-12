import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = input.first!
var K = input.last!

var arr = Array(1...N) //N까지의 배열
var resArr = [Int]() //제거된 사람의 배열
var cnt = K //제거할 자리값

while !arr.isEmpty {
    if cnt <= arr.count{ //자리값은 배열의 크기보다 작거나 같아야한다.
        resArr.append(arr[cnt-1]) //제거된 사람의 배열에 넣기
        arr.remove(at: cnt-1)
        cnt = cnt+K-1 //제거할 자리는 K만큼 증가
    }else{
        cnt -= arr.count
    }
}

print("<" + resArr.map({String($0)}).joined(separator: ", ") + ">")
