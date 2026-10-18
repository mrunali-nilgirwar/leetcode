class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        counts = {}
        for ch in magazine:
            if ch not in counts:
                counts[ch] = 0
            counts[ch] += 1

        for ch in ransomNote:
            if ch not in counts or counts[ch] == 0:
                return False
            counts[ch] -= 1        # blank 1: use up one of this letter

        return True                # blank 2: got through the whole note

        