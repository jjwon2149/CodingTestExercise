import Foundation

final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {

        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}

func lowerBound(_ left: inout Int,_ right: inout Int , _ target: Int) -> Int{
    while left < right{
        let mid = Int((left + right) / 2)
        if input_N[mid] < target {
            left = mid + 1
        }else if target <= input_N[mid] {
            right = mid
        }
    }
    return left
}

func upperBound(_ left: inout Int,_ right: inout Int , _ target: Int) -> Int{
    while left < right{
        let mid = Int((left + right) / 2)
        if input_N[mid] <= target{
            left = mid + 1
        }else if target < input_N[mid]{
            right = mid
        }
    }
    return right
}

func binarySearch(_ left: Int,_ right: Int , _ target: Int) -> Int{
    let mid = Int((left + right) / 2)
    var count = 0
    
    if target == input_N[mid]{
        var midLeft = mid - 1
        count += 1
        while midLeft >= 0 && target == input_N[midLeft]{
            count += 1
            midLeft -= 1
        }
        var midRight = mid + 1
        while midRight < input_N.count && target == input_N[midRight]{
            count += 1
            midRight += 1
        }
        return count
    }
    if left > right || target < input_N[left] || target > input_N[right]{
        return count
    }
    if target > input_N[mid]{
        return binarySearch(mid + 1, right, target)
    }else if target<input_N[mid]{
        return binarySearch(left, mid - 1, target)
    }
    return count
}


func quickSort(numArr : [Int]) -> [Int]{
    if numArr.count < 2{
        return numArr
    }
    
    let pivot = numArr[0]
    var left :[Int] = []
    var right :[Int] = []
    
    
    for i in 1..<numArr.count{
        if pivot > numArr[i]{
            left.append(numArr[i])
        }else if pivot < numArr[i] {
            right.append(numArr[i])
        }else if pivot == numArr[i]{
            left.insert(numArr[i], at: 0)
        }
    }
    return quickSort(numArr: left) + [pivot] + quickSort(numArr: right)
}




let fileIO = FileIO()
var input_N: [Int] = []
var input_M: [Int] = []

var N = fileIO.readInt()
//var N = Int(readLine()!)!

for _ in 0..<N {
    input_N.append(fileIO.readInt())
}
//var input_N = readLine()!.split(separator: " ").map{Int(String($0))!}

var M = fileIO.readInt()
//var M = Int(readLine()!)!
for _ in 0..<M {
    input_M.append(fileIO.readInt())
}
//var input_M = readLine()!.split(separator: " ").map{Int(String($0))!}

//input_N = quickSort(numArr: input_N)
input_N.sort()

var result = ""
var zero = 0
var N_real = N


for i in input_M{
    //let count = binarySearch(0 , N-1 , i)
    let up = upperBound(&zero, &N, i)
    zero = 0
    N = N_real
    let lo = lowerBound(&zero, &N, i)
    zero = 0
    N = N_real
    let count = up - lo
    //print(String((upperBound(&zero, &N, i)) - (lowerBound(&zero, &N, i))), terminator: " ")
    result += "\(count) "
}
print(result)



//아, 그 부분을 이야기 못 했군요.
//
//저도 빠른 입출력 소스 코드는 Xcode에서 제대로 작동하지 않아서 readLine(), print()로 작성하고 테스트합니다.
//
//그 후 제출할 때만 FIO.readInt(), FIO.readString(), FIO.print()로 바꿔서 빠른 입출력 소스를 사용하고 있습니다.
