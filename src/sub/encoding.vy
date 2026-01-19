
#pragma version 0.4.3

"""
@license MIT
@title Encoding
"""

STR1: public(String[50])
STR2: public(String[50])

@deploy
def __init__(str1: String[50], str2: String[50]):
    self.STR1 = str1
    self.STR2 = str2

@external
@pure
def combine(str1: String[50], str2: String[50]) -> String[100]:
    return concat(str1, str2)
    
@pure
@external
def b_encoding(number: uint256) -> Bytes[128]:
    return abi_encode(number)
    
@pure
@external
def string_en(str4: String[50]) -> Bytes[128]:
    return abi_encode(str4)
    
