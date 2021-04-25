#Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

class Solution:
    def twoSum(self, nums: List[int], target: int):  # nums->List[int],target->int
        d = {}

        for i, j in enumerate(nums):
            remaining = target - nums[i]

            if remaining in d:
                return [i, d[remaining]]
            else:
                d[j] = i
