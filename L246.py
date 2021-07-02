def isStrobogrammatic(self, num):
    """
    :type num: str
    :rtype: bool
    """
    maps = {("0", "0"), ("1", "1"), ("6", "9"), ("8", "8"), ("9", "6")}
    i,j = 0, len(num) - 1
    while i <= j:
        if (num[i], num[j]) not in maps:
            return False
        i += 1
        j -= 1
    return True


    class Solution:
    def isStrobogrammatic(self, num: str) -> bool:
        
        rotated_digits = {'0': '0', '1': '1', '8': '8', '6': '9', '9': '6'} #map
        
        rotated_string_builder = []
        
        for c in reversed(num):
            if c not in rotated_digits:
                return False
            rotated_string_builder.append(rotated_digits[c])
        
        rotated_string = "".join(rotated_string_builder)
        return rotated_string == num
        