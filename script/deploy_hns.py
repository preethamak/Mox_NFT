import base64
from src import hns

def deploy():
    happy = ""
    sad = ""
    with open("./image/happy.svg", "r") as f:
        happy_svg = f.read()
        happy = svg_to_base64(happy_svg)
        
    with open("./image/sad.svg", "r") as f:
        sad_svg = f.read()
        sad = svg_to_base64(sad_svg)
       
    contract = hns.deploy(happy, sad)
    print(contract.address)
    print(happy)
    print(sad)
     
def moccasin_main():
    deploy()
    
def svg_to_base64(svg):
    svg_bytes = svg.encode("utf-8")
    base64_svg = base64.b64encode(svg_bytes).decode("utf-8")
    return f"data:image/svg+xml;base64,{base64_svg}"