class Solution:
    def maxNumberOfBalloons(self, text: str) -> int:
        count={}
        for ch in text:
            if ch not in count:
                count[ch]=0
            count[ch]+=1
        
        cnt2={}
        for ch in 'balloon':
            if ch not in cnt2:
                cnt2[ch]=0
            cnt2[ch]+=1

        
        answer = float('inf')
        for ch in cnt2:
            can_make = count.get(ch, 0) // cnt2[ch]
            answer = min(answer, can_make)
        return answer
        
        

        