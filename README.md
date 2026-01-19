# Moccasin Project

🐍 Welcome to your Moccasin project!

## Quickstart

1. Deploy to a fake local network that titanoboa automatically spins up!

```bash
mox run deploy
```

2. Run tests

```
mox test
```

_For documentation, please run `mox --help` or visit [the Moccasin documentation](https://cyfrin.github.io/moccasin)_

# Token URI:

base_uri: "ipfs://"
_token_uri(token id): ttttert456645tgDFf66654(random string that matches the token)

#pragma version 0.4.0 
'''
@license MIT 
@title NFT ''' 

from lib.pypi.snekmate.tokens import erc721 
from lib.pypi.snekmate.auth import ownable as ow 

initializes: ow 
initializes: erc721[ownable := ow] 

exports: erc721.__interface__ 

NAME: constant(String[25]) = "PUPPY"
SYM: constant(String[5]) = "DOG"
BASE: public(constant(String[80])) = "ipfs://" #public to view it 
NAME_EIP712: constant(String) = "1" 

@deploy 
def __init__(): 
    ow.__init__(ow) erc721.__init__(NAME, SYM, BASE, NAME_EIP712) 
    
@external 
def mint(uri: String[432]): 
    token_id: uint256 = erc721._counter 
    erc721._counter = token_id+1 
    erc721._safe_mint(msg.sender, token_id, b"") 
    erc721._set_token_uri(token_id, uri)


data:image/svg+xml;base64,
PHN2ZyB2aWV3Qm94PSIwIDAgMjAwIDIwMCIgd2lkdGg9IjQwMCIgIGhlaWdodD0iNDAwIiB4bWxu
cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgogIDxjaXJjbGUgY3g9IjEwMCIgY3k9IjEw
MCIgZmlsbD0ieWVsbG93IiByPSI3OCIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIzIi8+
CiAgPGcgY2xhc3M9ImV5ZXMiPgogICAgPGNpcmNsZSBjeD0iNzAiIGN5PSI4MiIgcj0iMTIiLz4K
ICAgIDxjaXJjbGUgY3g9IjEyNyIgY3k9IjgyIiByPSIxMiIvPgogIDwvZz4KICA8cGF0aCBkPSJt
MTM2LjgxIDExNi41M2MuNjkgMjYuMTctNjQuMTEgNDItODEuNTItLjczIiBzdHlsZT0iZmlsbDpu
b25lOyBzdHJva2U6IGJsYWNrOyBzdHJva2Utd2lkdGg6IDM7Ii8+Cjwvc3ZnPg==

data:image/svg+xml;base64,
PHN2ZyB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgdmlld0JveD0iMCAwIDMwMCAzMDAiIHhtbG5z
PSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPCEtLSBGYWNlIC0tPgogIDxjaXJjbGUg
Y3g9IjE1MCIgY3k9IjE2MCIgcj0iMTAwIiBmaWxsPSIjRDhBMTVEIi8+CgogIDwhLS0gRWFycyAt
LT4KICA8ZWxsaXBzZSBjeD0iNzAiIGN5PSIxMTAiIHJ4PSI0NSIgcnk9IjcwIiBmaWxsPSIjQjA3
QTNBIiB0cmFuc2Zvcm09InJvdGF0ZSgtMjAgNzAgMTEwKSIvPgogIDxlbGxpcHNlIGN4PSIyMzAi
IGN5PSIxMTAiIHJ4PSI0NSIgcnk9IjcwIiBmaWxsPSIjQjA3QTNBIiB0cmFuc2Zvcm09InJvdGF0
ZSgyMCAyMzAgMTEwKSIvPgoKICA8IS0tIElubmVyIGVhcnMgLS0+CiAgPGVsbGlwc2UgY3g9Ijc4
IiBjeT0iMTIwIiByeD0iMjIiIHJ5PSI0MCIgZmlsbD0iI0U2Qjk4RiIgdHJhbnNmb3JtPSJyb3Rh
dGUoLTIwIDc4IDEyMCkiLz4KICA8ZWxsaXBzZSBjeD0iMjIyIiBjeT0iMTIwIiByeD0iMjIiIHJ5
PSI0MCIgZmlsbD0iI0U2Qjk4RiIgdHJhbnNmb3JtPSJyb3RhdGUoMjAgMjIyIDEyMCkiLz4KCiAg
PCEtLSBFeWVzIC0tPgogIDxlbGxpcHNlIGN4PSIxMTUiIGN5PSIxNTAiIHJ4PSIxMiIgcnk9IjE2
IiBmaWxsPSIjMkMyQzJDIi8+CiAgPGVsbGlwc2UgY3g9IjE4NSIgY3k9IjE1MCIgcng9IjEyIiBy
eT0iMTYiIGZpbGw9IiMyQzJDMkMiLz4KCiAgPCEtLSBFeWUgaGlnaGxpZ2h0cyAtLT4KICA8Y2ly
Y2xlIGN4PSIxMTgiIGN5PSIxNDUiIHI9IjQiIGZpbGw9IiNGRkZGRkYiLz4KICA8Y2lyY2xlIGN4
PSIxODgiIGN5PSIxNDUiIHI9IjQiIGZpbGw9IiNGRkZGRkYiLz4KCiAgPCEtLSBTbm91dCAtLT4K
ICA8ZWxsaXBzZSBjeD0iMTUwIiBjeT0iMTk1IiByeD0iNDUiIHJ5PSIzNSIgZmlsbD0iI0U2QzE5
QyIvPgoKICA8IS0tIE5vc2UgLS0+CiAgPHBhdGggZD0iTTEzNSAxODUgUTE1MCAxNzUgMTY1IDE4
NSBRMTUwIDIwMCAxMzUgMTg1IFoiIGZpbGw9IiMyQzJDMkMiLz4KCiAgPCEtLSBNb3V0aCAtLT4K
ICA8cGF0aCBkPSJNMTUwIDIwMCBRMTQwIDIxNSAxMjUgMjE1IiBzdHJva2U9IiMyQzJDMkMiIHN0
cm9rZS13aWR0aD0iNCIgZmlsbD0ibm9uZSIvPgogIDxwYXRoIGQ9Ik0xNTAgMjAwIFExNjAgMjE1
IDE3NSAyMTUiIHN0cm9rZT0iIzJDMkMyQyIgc3Ryb2tlLXdpZHRoPSI0IiBmaWxsPSJub25lIi8+
CgogIDwhLS0gU3VidGxlIHNoYWRvdyAtLT4KICA8ZWxsaXBzZSBjeD0iMTUwIiBjeT0iMjUwIiBy
eD0iNjAiIHJ5PSIxMCIgZmlsbD0iIzAwMDAwMCIgb3BhY2l0eT0iMC4wOCIvPgo8L3N2Zz4K