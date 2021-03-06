
/*
 Two lists of variable size, sorted, linear runtime, constant space complexity, find the common elements between the arrays
 */

func sameElements(nums1: [Int], nums2: [Int]) -> [Int]{
    var result = [Int]()
    
    for element1 in nums1 {
        for element2 in nums2{
            if element1 == element2{
                if result.last != element1 {
                    result.append(element1)
                }
            } else{
                if(element2 > element1){
                    break
                }
            }
        }
    }
    
    return result
}


let testCase1 = [1,2,2,3,4,7,8,9]
let testCase2 = [1,2,2,10,12,14,16]
// [1,2]
print(sameElements(nums1: testCase1, nums2: testCase2))


/*
 Brute Force Solution
 
 func sameElements(nums1: [Int], nums2: [Int]) -> [Int]{
 var result = [Int]()
 for item in nums1 {
 // While looping through the first array, we need to check if the element is in the second array
 if nums2.contains(item){
 result.append(item)
 }
 }
 
 return result
 }
 
 
 let testCase1 = [1,2,3,4,7,8,9]
 let testCase2 = [1,2,12,10,16,14]
 
 print(sameElements(nums1: testCase1, nums2: testCase2))
 */





// F


