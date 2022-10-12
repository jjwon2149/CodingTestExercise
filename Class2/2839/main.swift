import Foundation

var input = Int(readLine()!)!
let no = -1
var a = 0
var res = 0

while (input % 5 != 0 && input>=0) {
        input = input - 3;
        a = a + 1;
}

if (input < 0) {
    print(no)
}
else {
    res += (input / 5) + a
    print(res)
}
