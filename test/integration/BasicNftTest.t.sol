// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../../script/DeployBasicNft.s.sol";
import {BasicNft} from "../../src/BasicNft.sol";

contract BasicNftTest is Test{
    DeployBasicNft public deployer;
    BasicNft public nft;
    address public USER = makeAddr("user");
    string public constant PUG_URI =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    function setUp() public{
        deployer = new DeployBasicNft();
        nft = deployer.run();
    }

    function testCheckIfNameIsCorrect() public view{
        string memory name = nft.name();
        string memory expectedName = "Dogie";

        assert (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked(expectedName)));
    }

    function testIfCanMintWithBalance() public{
        hoax(USER, 1 ether);
        nft.mintNft(PUG_URI);

        assertEq(nft.balanceOf(USER), 1);
        assert(keccak256(abi.encodePacked(nft.tokenURI(0))) == keccak256(abi.encodePacked(PUG_URI)));
    }

}