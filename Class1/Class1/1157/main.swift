import Foundation

let input = Array(readLine()!)
let result = input.map { String($0) }
var alpha : Array<String> = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
var Alpha : Array<String> = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
var num = [Int](repeating: 0, count: 26)

for i in 0...result.count-1 {
    for j in 0...25{
        if result[i] == alpha[j] || result[i] == Alpha[j]{
            num[j] += 1
        }
    }
}
let Max = num.max()
let firstIndex  = num.firstIndex(of: Max!)
let lastIndex = num.lastIndex(of: Max!)


if firstIndex == lastIndex{
    print(Alpha[firstIndex!])
}else{
    print("?")
}
