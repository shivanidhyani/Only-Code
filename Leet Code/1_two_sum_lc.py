nums = [2, 7, 3, 5, 4]
target = 9

def twoSum(nums, target):
    for i in range(len(nums)):
        for j in range(i+1, len(nums)):
            nums[i] + nums[j] == target
            return print([i, j])


twoSum(nums, target)