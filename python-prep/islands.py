'''
 0,0,0,0
 0,1,1,0
 0,1,1,0
 0,1,1,0

 '''


def islands(nums):
    width = 0
    height = 0
    print(nums)
    i = 0
    j = 0
    while i < len(nums):
        while j < len(nums[0]):
            print("In here")
            print("i: {}".format(i))
            print("j: {}".format(j))
            if nums[i][j] == 1:
                while nums[i][j] == 1 and j < len(nums):
                    print("Element Horizontally: {}".format(nums[i][j]))
                    width += 1
                    j += 1
                while nums[i][j] == 1 and i < len(nums):
                    print("Element Vertically: {}".format(nums[i][j]))
                    height += 1
                    i += 1
            j += 1
            i += 1

    return width, height


a = [[0, 0, 0, 0], [0, 1, 1, 0], [0, 1, 1, 0], [0, 1, 1, 0]]

print(islands(a))
