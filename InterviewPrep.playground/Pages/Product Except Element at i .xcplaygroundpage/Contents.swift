/*
 Given an array nums of n integers where n > 1,  return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].
 
 Input:  [1,2,3,4]
 Output: [24,12,8,6]
 */


func multiplyList(lst: [Int]) -> (Int, Int) {
    var product = 1
    var numberOfZeros = 0
    
    for number in lst {
        if number != 0{
            product = number * product
        }
        else{
            numberOfZeros += 1
        }
    }
    
    return (product,numberOfZeros)
}

func multiplyExceptAtIndex(nums:[Int]) -> [Int]{
    var results = [Int]()
    let product = multiplyList(lst:nums).0
    let numOfZeros = multiplyList(lst:nums).1
    
    for element in nums {
        if element != 0 && numOfZeros == 0{
            results.append(product / element)
        }
        else {
            results.append(0)
        }
    }
    
    return results
}



var testCase = [1,2,0,0]
print(multiplyExceptAtIndex(nums: testCase))
// [0,0,0,6]


