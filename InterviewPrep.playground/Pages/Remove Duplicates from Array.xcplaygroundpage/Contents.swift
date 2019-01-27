/*
 Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
 
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 
 */


func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 || nums == nil {
        return 0
    }
    
    var second = 0
    for first in 0 ..< nums.count {
        if nums[first] != nums[second]{
            second += 1
            nums[second] = nums[first]
        }
        
    }
    return second + 1
}
