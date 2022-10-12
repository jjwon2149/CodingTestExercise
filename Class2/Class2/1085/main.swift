import Foundation

let input = readLine()!.split(separator: " ").map{Int(String ($0))!}

let inputX = input[0]
let inputY = input[1]
let compX = input[2]
let compY = input[3]

var resX = inputX-compX
var resY = inputY-compY


if (resX < 0){
    resX = resX * -1
}
if (resY < 0){
    resY = resY * -1
}

print(min(resX,resY,inputX,inputY))

