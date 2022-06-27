import Foundation

func takeBP(_ arr: [Int] ) -> Int {
    let numOfZeros = arr.filter {$0 == 0}.count
    let numOfNeg = arr.filter {$0 < 0}.count
    if numOfZeros > 1 {
        return arr.randomElement()!
    }
    else if numOfZeros == 0 {
        if numOfNeg % 2 == 0 && numOfNeg == arr.count {
            return arr.min()!
        }
        else if numOfNeg % 2 == 1 && numOfNeg == arr.count {
            return arr.max()!
        }
        else if numOfNeg % 2 == 0 {
            return arr.filter {$0 > 0}.min()!
        }
        else {
            return arr.min()!
        }
    }
    else {
        if numOfNeg % 2 == 0 {
            return 0
        }
        else {
            return arr.filter {$0 != 0}.randomElement()!
        }
    }
}

/*let N = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map {Int($0)!}

if N == arr.count {
    print(takeBP(arr))
}*/

print(takeBP([1, 2, 3, 4, 5, 6]))
print(takeBP([-1, -2, -3, -4, -5, -6]))
print(takeBP([-1, -2, -3, -4, -5]))
print(takeBP([0, 1, 3, 4]))

print([1, 2, 3, 4, 5, 6, 7].filter {$0 == 1})
