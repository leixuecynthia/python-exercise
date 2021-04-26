class Solution:
    def reverse(self, x: int) -> int:
        r = int(str(abs(x))[::-1])

        if r.bit_length() < 32:
            if x < 0:
                return -r
            else:
                return r
        else:
            return 0
