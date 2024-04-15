v= ["flower","flow", "flp", "flight"]

def longestCommonPrefix(v):
    v = sorted(v)
    ans= " "
    first = v[0]
    last=v[-1]
    for i in range(min(len(first), len(last))):
        if(first[i]!=last[i]):
            return ans
        else:
            ans += first[i] 
            
longestCommonPrefix(v)
