func sameElements(nums1: [Int], nums2: [Int]) -> [Int]{
    var pointer1 = 0
    var pointer2 = 0
    var results = Set<Int>()
    while pointer1 < nums1.count && pointer2 < nums2.count {
        if nums1[pointer1] > nums2[pointer2]{
            pointer2 += 1
        }
        else if nums1[pointer1] == nums2[pointer2]{
            results.insert(nums1[pointer1])
            pointer1 += 1
            pointer2 += 1
        }else{
           pointer1 += 1
        }
    }
    
    return Array(results)
}


let testCase1 = [1,2,2,3,4,7,8,9]
let testCase2 = [1,2,2,10,12,14,16]
// [1,2]
sameElements(nums1: testCase1, nums2: testCase2)
