class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        seen = {}
        for i, num in enumerate(nums):
            need = target-num          # what partner do I need?
            if need in seen:             # have I seen that partner before?
                return [seen[need], i]
            seen[num]=i                # remember this number and its position        