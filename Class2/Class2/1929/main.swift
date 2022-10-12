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

func findSieveOfEratosthenes (a : [Int]) -> [Int]{
    var isPrime = true
    var EraArr = [Int]()
    for i in 0..<a.count {
        if a[i] == 1{
            isPrime = false
        }else{
            for j in 2..<a[i]{
                if a[i] == 0{
                    continue
                }
                if a[i] % j == 0{
                    isPrime = false
                }
            }
        }
        if isPrime == true{
            EraArr.append(a[i])
        }
        isPrime = true
    }
    return EraArr
}

let fileIO = FileIO()

var input: [Int] = []
for _ in 0..<2 {
    input.append(fileIO.readInt())
}
//let input = readLine()!.split(separator: " ").map{Int($0)}

let M = input[0]
let N = input[1]

var arr: [Int] = Array(repeating: 0, count: N + 1)
for i in 2...N {
    arr[i] = i
}

print(findSieveOfEratosthenes(a: arr))
