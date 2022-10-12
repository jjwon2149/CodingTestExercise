import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let row = input.first!
let col = input.last!
var arr : [[String]] = []
var res = 999

for _ in 0 ..< row {
    arr.append(readLine()!.map{String($0)})
}

let White =
[["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"]]

let Black =
[["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"],
["B","W","B","W","B","W","B","W"],
["W","B","W","B","W","B","W","B"]]

func compare(trow: Int,tcol:Int)-> Int{
    var Wcount = 0
    var Bcount = 0
    for i in 0..<8{
        for j in 0..<8{
            if White[i][j] != arr[trow + i][ tcol + j]{
                Wcount += 1
            }
            if Black[i][j] != arr[trow + i][ tcol + j]{
                Bcount += 1
            }
        }
    }
    if Wcount >= Bcount{
        return Bcount
    }else{
        return Wcount
    }
}

for i in 0...row-8{
    for j in 0...col-8{
        res = min(compare(trow: i, tcol: j),res)
    }
}

print(res)

