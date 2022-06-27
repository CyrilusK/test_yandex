import Foundation

func getProfit(_ prices: [Int] ) -> Int {
    var totalProfit = 0
    for i in 0 ..< prices.count {
        if i == 0 {
            continue
        }
        else if (prices[i] > prices[i - 1]) {
            totalProfit += prices[i] - prices[i - 1]
            continue
        }
        else { continue }
    }
    return totalProfit
}

let n = Int(readLine()!)!
let prices = readLine()!.components(separatedBy: " ").map { Int($0)! }

if (n == prices.count) {
    print(getProfit(prices))
}

//test
/*print(getProfit([1, 2, 3, 4, 5]))
print(getProfit([10, 9, 8, 7]))
print(getProfit([1, 2, 3, 5, 1, 6, 8, 9, 10, 1]))
print(getProfit([10, 9, 8, 1, 5, 8, 1, 10]))*/


