from src.sub import encoding

def deploy(x, y):
    contract = encoding.deploy(x, y)
    print(contract)
    
    ans = contract.combine(x, y)
    #ans1 = contract.b_encoding(int(x))
    
    #z = input("Enter string")
    #ans2 = contract.string_en(z)
    
    #print(ans2)
    #print(ans1)
    print(ans)
    return contract
    
def moccasin_main():
    a = input("Enter string 1: ")
    b = input("Enter string 2: ")
    deploy(a, b)