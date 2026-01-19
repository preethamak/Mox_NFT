

#pragma version 0.4.3


"""
@license MIT
@title HappynSad
"""




from snekmate.tokens import erc721
from snekmate.auth import ownable as ow
from snekmate.utils import base64

initializes: ow
initializes: erc721[ownable := ow]

NAME: constant(String[25]) = "HnS"
SYMBOL: constant(String[5]) = "NFT"
BASE_URI: constant(String[34]) = ""
EIP_712_VERSION: constant(String[1]) = "1"
FINAL_STRING_SIZE: constant(uint256) = (4*base64._DATA_OUTPUT_BOUND) + 80
JSON_BASE_URI: constant(String[29]) = "data:application/json;base64,"
IMG_BASE_URI_SIZE: constant(uint256) = 26
IMG_BASE_URI: constant(String[IMG_BASE_URI_SIZE]) = "data:image/svg+xml;base64,"

HAPPY_SVG: immutable(String[800])
SAD_SVG: immutable(String[800])

@deploy
def __init__(happysvg: String[1000], sadsvg: String[1000]):
    ow.__init__()
    erc721.__init__(NAME, SYMBOL, BASE_URI, NAME, EIP_712_VERSION)

    HAPPY_SVG = happysvg
    SAD_SVG = sadsvg

@external
@view
def toeknURI(token_id: uint256) -> String[512]:
    # Construct the JSON metadata
    json_string: String[1024] = concat(
        '{"name":"',
        NAME,
        '", "description":"An NFT that reflects the mood of the owner, 100% on Chain!", ',
        '"attributes": [{"trait_type": "moodiness", "value": 100}], "image":"',
        image_uri,
        '"}',
    )

@external
@view
def get_sad_svg() -> String[800]:
    """
    @notice Get the sad SVG URI
    @return The sad SVG URI
    """
    return SAD_SVG_URI


@external
@view
def get_counter() -> uint256:
    """
    @notice Get the current token counter
    @return The current token counter
    """
    return erc721._counter


@external
@pure
def svg_to_uri(svg: String[1024]) -> String[FINAL_STRING_SIZE]:
    svg_bytes: Bytes[1024] = convert(svg, Bytes[1024])
    encoded_chunks: DynArray[
        String[4], base64._DATA_OUTPUT_BOUND
    ] = base64._encode(svg_bytes, True)
    result: String[FINAL_STRING_SIZE] = JSON_BASE_URI

    counter: uint256 = IMG_BASE_URI_SIZE
    for encoded_chunk: String[4] in encoded_chunks:
        result = self.set_indice_truncated(result, counter, encoded_chunk)
        counter += 4
    return result