// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";
import {MoodNft} from "../../src/MoodNft.sol";
import {Test, console} from "forge-std/Test.sol";

contract MoodNftTest is Test {
    DeployMoodNft public deployer;
    
    string public constant HAPPY_MOOD_URI =
        "data:application/json;base64,";

    string public constant SAD_MOOD_URI =
        "data:application/json;base64,";
    
    function setUp() public {
        deployer = new DeployMoodNft();
    }

    function testConvertSvgToUri() public{
        string 
            memory expected_uri = "data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjAwIDIwMCIgd2lkdGg9IjQwMCIgIGhlaWdodD0iNDAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPiA8Y2lyY2xlIGN4PSIxMDAiIGN5PSIxMDAiIGZpbGw9InllbGxvdyIgcj0iNzgiIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMyIvPiA8ZyBjbGFzcz0iZXllcyI+IDxjaXJjbGUgY3g9IjYxIiBjeT0iODIiIHI9IjEyIi8+IDxjaXJjbGUgY3g9IjEyNyIgY3k9IjgyIiByPSIxMiIvPiA8L2c+IDxwYXRoIGQ9Im0xMzYuODEgMTE2LjUzYy42OSAyNi4xNy02NC4xMSA0Mi04MS41Mi0uNzMiIHN0eWxlPSJmaWxsOm5vbmU7IHN0cm9rZTogYmxhY2s7IHN0cm9rZS13aWR0aDogMzsiLz4gPC9zdmc+";
        string
            memory svg = '<svg viewBox="0 0 200 200" width="400"  height="400" xmlns="http://www.w3.org/2000/svg"> <circle cx="100" cy="100" fill="yellow" r="78" stroke="black" stroke-width="3"/> <g class="eyes"> <circle cx="61" cy="82" r="12"/> <circle cx="127" cy="82" r="12"/> </g> <path d="m136.81 116.53c.69 26.17-64.11 42-81.52-.73" style="fill:none; stroke: black; stroke-width: 3;"/> </svg>';
        
        string memory actual_svg = deployer.svgToImageURI(svg);

        assert(keccak256(abi.encodePacked(actual_svg)) == keccak256(abi.encodePacked(expected_uri)));
    }
}