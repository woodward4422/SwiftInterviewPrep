//: [Previous](@previous)

import Foundation


func amountOfIslands(nums: inout [[Int]]) -> Int {
    var islandCount = 0
    for i in 0..<nums.count{
        for j in 0..<nums[0].count {
            if nums[i][j] == 1{
                islandCount += 1
                
                turnLandToWater(&nums, i,j)
            }
        }
    }
    return islandCount
}

func turnLandToWater(_ nums: inout [[Int]],_ i: Int, _ j: Int){
    if i < 0 || i >= nums.count || j < 0 || j >= nums[0].count || nums[i][j] == 0 {
        return
    }
    nums[i][j] = 0
    turnLandToWater(&nums,i + 1,j) //top
    turnLandToWater(&nums,i - 1,j) // bottom
    turnLandToWater(&nums,i,j - 1) // left
    turnLandToWater(&nums,i,j + 1) // right
    

}

var a = [[0,1,1],
        [0,1,1],
        [1,0,0],
        [0,0,1]]
amountOfIslands(nums: &a)
