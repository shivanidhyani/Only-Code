x = int(input("Enter the value of X = "))
def isPalindrome(x):
    
    if x<0:
        print("False")
    else:
        y=str(x)
        y = y[::-1]
        y = int(y)
        
        if y==x:
            print("True")
        
        else:
            print("False")

isPalindrome(x)