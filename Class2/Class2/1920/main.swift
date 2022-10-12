import Foundation

//N(1 ≤ N ≤ 100,000)
//M(1 ≤ M ≤ 100,000)

func binarySearch(_ arr: [Int], _ target: Int) -> Int{
    var start = 0
    var end = arr.count - 1

    while start <= end {
        let mid = (start + end) / 2
            if arr_N[mid] == target {
                return 1
            }else if arr_N[mid] > target {
                end = mid - 1
            }else if arr_N[mid] < target {
                start = mid + 1
            }
        }
        return 0
}

let N = Int(readLine()!)!
var arr_N = readLine()!.split(separator: " ").map{ Int($0)! }

let M = Int(readLine()!)!
var arr_M = readLine()!.split(separator: " ").map{ Int($0)! }

arr_N.sort()

for i in 0..<M{
    print(binarySearch(arr_N, arr_M[i]))
}
