import Foundation

func difficultLetter(_ str: [Character], _ arr: [Int]) -> Character {
    var newArr = arr
    for i in 1 ..< arr.count {
        newArr[i] -= arr[i-1]
    }
    return str[newArr.lastIndex(of: newArr.max()!)!]
}

let n = Int(readLine()!)!
let s = Array(readLine()!)
let a = readLine()!.components(separatedBy: " ").map {Int($0)!}

if (n == s.count && n == a.count && a == a.sorted()) {
    print(difficultLetter(s, a))
}

//print(difficultLetter(Array("abc"), [10, 11, 12]))
//print(difficultLetter(Array("adc"), [1, 5, 7]))
//print(difficultLetter(Array("bcda"), [1, 2, 4, 6]))
//print(difficultLetter(Array("aabbc"), [1, 3, 5, 7, 8]))




