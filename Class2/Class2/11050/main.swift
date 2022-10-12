
func factorial(_ a : Int) -> Int {
    var num = 1
    for i in 2 ..< a+1{
        num *= i
    }
    return num
}

let input = readLine()!.split(separator: " ").map{Int($0)!}
var N = input[0]
var K = input[1]

if K == 0 || N == K{
    print(1)
}else{
    let res = factorial(N) / (factorial(N-K)*factorial(K))
    print(res)
}
