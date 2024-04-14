s = input("Enter the Roman Number =")
def romanToInt(s):
    m = {'I': 1, 'V': 5, 'X': 10, 'L': 50,'C': 100, 'D': 500, 'M': 1000}
    number = 0
    for i in range(len(s)):
        if i < len(s) -1 and m[s[i]] < m[s[i+1]]:
            number -=m[s[i]] 
        else:
            number +=m[s[i]]
    print(number) 

romanToInt(s)    