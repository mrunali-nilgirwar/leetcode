class Solution:
    def kthDistinct(self, arr: list[str], k: int) -> str:
        count={}
        for ch in arr:
            if ch not in count:
                count[ch]=0
            count[ch]+=1
        
        unique=[]
        for ch in arr:
            if count[ch]==1:
                unique.append(ch)

        if len(unique) >= k:
            return unique[k-1]
        return ""


        

        
        