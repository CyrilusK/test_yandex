import Foundation

func levDis(_ w1: String, _ w2: String) -> Int {
    let empty = [Int](repeating:0, count: w2.count)
    var last = [Int](0...w2.count)

    for (i, char1) in w1.enumerated() {
        var cur = [i + 1] + empty
        for (j, char2) in w2.enumerated() {
            cur[j + 1] = char1 == char2 ? last[j] : min(last[j], last[j + 1], cur[j]) + 1
        }
        last = cur
    }
    return last.last!
}

func magicStr(_ t: [Character], _ s: String) -> Int {
    for i in 0 ..< t.count {
        if i < s.count - 1 {
            continue
        }
        else {
            //if s.contains(t[i]) {
                var substr = ""
                for j in 0 ..< s.count {
                    substr.append(t[i-j])
                    //print(substr)
                }
                if levDis(String(Array(s).sorted()), String(Array(substr).sorted())) == 1 {
                    return i - (s.count - 1)
                }
            //}
        }
    }
    return -1
}


//let text = Array(readLine()!)
//let str = readLine()!

print(magicStr(Array("abcddc"), "ccde"))
print(magicStr(Array("bcdf"), "dcba"))
print(magicStr(Array("abcd"), "abef"))

