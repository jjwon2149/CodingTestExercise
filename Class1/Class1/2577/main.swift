import Foundation

var input :[Int] = []
var num = 1
var nums = [Int](repeating: 0, count: 10)

for i in 0...2{
    input.append(Int(readLine()!)!)
    num = num * input[i]
}

var res = String(num)
let ys = res.unicodeScalars.map(String.init)
for i in 0...ys.count-1{
    if ys[i] == "0"{
        nums[0] += 1
    }
    if ys[i] == "1"{
        nums[1] += 1
    }
    if ys[i] == "2"{
        nums[2] += 1
    }
    if ys[i] == "3"{
        nums[3] += 1
    }
    if ys[i] == "4"{
        nums[4] += 1
    }
    if ys[i] == "5"{
        nums[5] += 1
    }
    if ys[i] == "6"{
        nums[6] += 1
    }
    if ys[i] == "7"{
        nums[7] += 1
    }
    if ys[i] == "8"{
        nums[8] += 1
    }
    if ys[i] == "9"{
        nums[9] += 1
    }
}

for i in nums{
    print(i)
}
