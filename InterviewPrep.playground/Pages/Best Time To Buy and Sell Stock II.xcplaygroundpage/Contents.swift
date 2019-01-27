import Cocoa
/*
 Say you have an array for which the ith element is the price of a given stock on day i.
 
 Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).
 
 Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).
 
 */
func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0
    var j = 0
    let pricesLen =  prices.count - 1
    for i in 0..<pricesLen{
        let difference = prices[i + 1] - prices[i]
        if difference > 0{
            profit += difference
        }
    }
    
    return profit
    
    
}


