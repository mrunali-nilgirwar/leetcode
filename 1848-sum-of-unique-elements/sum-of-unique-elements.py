class Solution:
    def sumOfUnique(self, nums: List[int]) -> int:
        # GROUP BY num, COUNT(*)
        counts = {}
        for num in nums:
            if num not in counts:
                counts[num] = 0
            counts[num] += 1

        # HAVING COUNT(*) = 1, then SUM(num)
        total = 0
        for num in counts:
            if counts[num] == 1:
                total += num
        return total
        