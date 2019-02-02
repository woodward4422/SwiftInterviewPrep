func widthOfIslands(matrix: [[Int]]) -> String {
    var row = 0
    var height = 0
    
    for i in 0..<matrix.count{
        var rowCount = 0
        
        for j in 0..<matrix[0].count{
            if matrix[i][j] == 1{
                rowCount += 1
            }
            
        }
        
        if rowCount > 0{
            height += 1
        }
        
        if rowCount > 0 {
            row = rowCount
        }
    }
    return String("row: \(row)" + "height: \(height)")
}

widthOfIslands(matrix: [[0,1,0],
                        [0,0,0],
                        [0,0,0],
                        [0,0,0]])
/*
 0,0,0,0
 0,1,1,0
 0,1,1,0
 0,1,1,0
 */
