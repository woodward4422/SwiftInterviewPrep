/*
 
 Given a non-empty array of integers, every element appears twice except for one. Find that single one.
 
 Note:
 
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 
 */
func singleNumber(_ nums: [Int]) -> Int {
    let setSum = Set(nums).reduce(0,+) //15
    let numsSum = nums.reduce(0,+) // 29
    return (2 * setSum) - numsSum
}

var numsTester = [1,2,2,3,3,4,4,5,5]
singleNumber(numsTester)


