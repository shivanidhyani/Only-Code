nums = [2, 7, 3, 6, 4, 8]
target = 9

def twoSum(nums, target):
    for i in range(len(nums)):
        for j in range(i+1, len(nums)):
            if nums[i]+ nums[j] == target:
                print(i, j)

print(twoSum(nums, target))