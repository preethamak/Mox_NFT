#from moccasin.boa_tools import VyperContract

from src import nft

PUG_URI = "QmW16U98JrY9HBY36rQtUuUtDnm6LdEeNdAAggmrx3thMa"
#decentralised way: deploy to ipfs. "ipfs://QmW16U98JrY9HBY36rQtUuUtDnm6LdEeNdAAggmrx3thMa"
#centralised way: deploy it to any cloud. "https://gateway.pinata.cloud/ipfs/QmanoFs6a4GHRtTW32w1fFJSv61TFT8Vk9qKqFF1mcdjMK"

def deploy_basic_nft():
    basic_nft_contract = nft.deploy()
    print(f"Deployed basic NFT to {basic_nft_contract.address}")
    basic_nft_contract.mint(PUG_URI)
    print(f"Minted Pug NFT with URI {basic_nft_contract.tokenURI(0)}")
    return basic_nft_contract


def moccasin_main():
    return deploy_basic_nft()