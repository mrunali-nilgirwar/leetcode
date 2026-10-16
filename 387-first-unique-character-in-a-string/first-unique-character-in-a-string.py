class Solution:
    def firstUniqChar(self, s: str) -> int:
        counts = {}
        for ch in s:
            if ch not in counts:
                counts[ch] = 0
            counts[ch] += 1

        for i, ch in enumerate(s):
            if counts[ch] == 1:
                return i

        return -1
        