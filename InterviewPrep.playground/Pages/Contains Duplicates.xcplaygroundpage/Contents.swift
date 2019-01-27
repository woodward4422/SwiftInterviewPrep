   /*
    
    Given an array of integers, find if the array contains any duplicates.
    
    Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
    
    */
   
   func containsDuplicate(_ nums: [Int]) -> Bool {
        var tempArr = [Int]()
        for element in nums{
            if tempArr.contains(element){
                return true
            }
            else{
                tempArr.append(element)
            }
        }
        
        return false
    }

   
var nums = [1,2,3,1]
containsDuplicate(nums)
