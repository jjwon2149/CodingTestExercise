import Foundation

var input :[Int] = []

for _ in 0...2{
    input.append(Int(readLine()!)!)
}

var sum = String(input[0] * input[1] * input[2])
var arr:[Character] = []

for i in sum { //String에서 한단어씩 빼기
    arr.append(i)
}

for i in 0...9{
    let a = arr.filter{Int(String($0))! == i}
    let num = a.count
    print(num)
}

