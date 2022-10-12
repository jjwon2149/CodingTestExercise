import Foundation

var arr : [String] = []
var Narr = [Character]()

while true{
    arr.append(readLine()!)
    if(arr.last == "0"){
        arr.removeLast()
        break
    }
}

for i in 0..<arr.count{
    Narr = Array(arr[i])
    var len = Narr.count
    var res = 0
    for j in 0..<Narr.count{
        if j == len{
            break
        }
        if Narr[j] != Narr[len-1]{
            res = 1
            break
        }else{
            res = 0
            len = len - 1
        }
    }
    if res == 0{
        print("yes")
    }else{
        print("no")
    }
}

