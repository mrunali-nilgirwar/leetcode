class Solution:
    def uniqueOccurrences(self, arr: List[int]) -> bool:
        # Step 1: count each number (Day 2 / Day 6)
        counts = {}
        for num in arr:
            if num not in counts:
                counts[num] = 0
            counts[num] += 1

        # Step 2: are the counts all different? (Day 4 idea)
        values = list(counts.values())
        return len(values) == len(set(values))
        