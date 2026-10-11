class Solution:
    def topKFrequent(self, nums: list[int], k: int) -> list[int]:
        count={}
        for num in nums:
            if num not in count:
                count[num]=0
            count[num]+=1
        ordered=sorted(count, key=count.get, reverse=True)
        return ordered[:k]
        