#Classical Stack

s = input("Enter the Bracket = ")

def isValid(s):
    m = {")":"(", "}":"{", "]":"["}
    stack = []
    for p in s:
        if p in m:
            if stack and stack[-1] == m[p]:
                stack.pop()

            else:
                print("False")
        else:
            stack.append(p)
    
    return print("true")

isValid(s)
