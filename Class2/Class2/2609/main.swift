import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var max = input.max()!
var min = input.min()!
var mod = 0

mod = max % min
while true{
    if mod == 0 {
        break
    }
    max = min
    min = mod
    mod = max % min
}
print(min)
print(min * (input[0]/min) * (input[1]/min))
