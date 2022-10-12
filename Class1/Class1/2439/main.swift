import Foundation

var line = readLine()
var res = ""

if let a:Int = Int (line!) {

    for i in 1...a {
        res = ""
 
        for _ in i...a {
            res += " "
        }
        for _ in a-i+1...a {
            res += "*"
        }
        res.removeFirst()
        print(res)
    }
}
