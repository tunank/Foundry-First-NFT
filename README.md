# README

## Overview

This repository contains smart contracts and deployment scripts for two NFT contracts: `BasicNft` and `MoodNft`. These contracts are written in Solidity and use the OpenZeppelin library.

## Contracts

### BasicNft.sol

`BasicNft` is an ERC721 NFT contract.

#### Features:
- **Minting**: Users can mint NFTs with a specified token URI.
- **Token URI Management**: Stores and retrieves the token URI for each NFT.

#### Methods:
- `constructor()`: Initializes the contract with the name "Dogie" and symbol "DOG".
- `mintNft(string memory tokenUri)`: Mints a new NFT.
- `tokenURI(uint256 tokenId)`: Returns the token URI.
- `getTokenCounter()`: Returns the number of minted tokens.

### MoodNft.sol

`MoodNft` is an ERC721 NFT contract with mood states (HAPPY or SAD).

#### Features:
- **Mood States**: NFTs have a mood state of either HAPPY or SAD.
- **Minting**: Users can mint NFTs with an initial mood state of HAPPY.
- **Mood Flipping**: Owners can flip the mood state of their NFTs.

#### Methods:
- `constructor(string memory sadSvgImageUri, string memory happySvgImageUri)`: Initializes the contract with SVG URIs for sad and happy states.
- `mintNft()`: Mints a new NFT.
- `flipMood(uint256 tokenId)`: Flips the mood state.
- `tokenURI(uint256 tokenId)`: Returns the token URI.

## Scripts

### DeployBasicNft.s.sol

Deploys the `BasicNft` contract.

### DeployMoodNft.s.sol

Deploys the `MoodNft` contract with SVG URIs.

### interaction.s.sol

Interacts with the `BasicNft` contract to mint new NFTs.

## Installation

Ensure you have the following tools installed:

- [Foundry](https://book.getfoundry.sh/)
- [OpenZeppelin Contracts](https://openzeppelin.com/contracts/)

## Usage

### Deploying Contracts

1. **Deploy BasicNft:**
    ```bash
    forge script script/DeployBasicNft.s.sol --broadcast
    ```

2. **Deploy MoodNft:**
    ```bash
    forge script script/DeployMoodNft.s.sol --broadcast
    ```

### Interacting with Contracts

1. **Mint BasicNft:**
    ```bash
    forge script script/MintBasicNft.s.sol --broadcast
    ```

## Directory Structure

- `src/`: Smart contracts.
  - `BasicNft.sol`
  - `MoodNft.sol`
- `script/`: Deployment and interaction scripts.
  - `DeployBasicNft.s.sol`
  - `DeployMoodNft.s.sol`
  - `interaction.s.sol`

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

Happy SVG:
data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjAwIDIwMCIgd2lkdGg9IjQwMCIgIGhlaWdodD0iNDAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgogIDxjaXJjbGUgY3g9IjEwMCIgY3k9IjEwMCIgZmlsbD0ieWVsbG93IiByPSI3OCIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIzIi8+CiAgPGcgY2xhc3M9ImV5ZXMiPgogICAgPGNpcmNsZSBjeD0iNjEiIGN5PSI4MiIgcj0iMTIiLz4KICAgIDxjaXJjbGUgY3g9IjEyNyIgY3k9IjgyIiByPSIxMiIvPgogIDwvZz4KICA8cGF0aCBkPSJtMTM2LjgxIDExNi41M2MuNjkgMjYuMTctNjQuMTEgNDItODEuNTItLjczIiBzdHlsZT0iZmlsbDpub25lOyBzdHJva2U6IGJsYWNrOyBzdHJva2Utd2lkdGg6IDM7Ii8+Cjwvc3ZnPg==
Sad SVG:
data: image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/Pgo8c3ZnIHdpZHRoPSIxMDI0cHgiIGhlaWdodD0iMTAyNHB4IiB2aWV3Qm94PSIwIDAgMTAyNCAxMDI0IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgogIDxwYXRoIGZpbGw9IiMzMzMiIGQ9Ik01MTIgNjRDMjY0LjYgNjQgNjQgMjY0LjYgNjQgNTEyczIwMC42IDQ0OCA0NDggNDQ4IDQ0OC0yMDAuNiA0NDgtNDQ4Uzc1OS40IDY0IDUxMiA2NHptMCA4MjBjLTIwNS40IDAtMzcyLTE2Ni42LTM3Mi0zNzJzMTY2LjYtMzcyIDM3Mi0zNzIgMzcyIDE2Ni42IDM3MiAzNzItMTY2LjYgMzcyLTM3MiAzNzJ6Ii8+CiAgPHBhdGggZmlsbD0iI0U2RTZFNiIgZD0iTTUxMiAxNDBjLTIwNS40IDAtMzcyIDE2Ni42LTM3MiAzNzJzMTY2LjYgMzcyIDM3MiAzNzIgMzcyLTE2Ni42IDM3Mi0zNzItMTY2LjYtMzcyLTM3Mi0zNzJ6TTI4OCA0MjFhNDguMDEgNDguMDEgMCAwIDEgOTYgMCA0OC4wMSA0OC4wMSAwIDAgMS05NiAwem0zNzYgMjcyaC00OC4xYy00LjIgMC03LjgtMy4yLTguMS03LjRDNjA0IDYzNi4xIDU2Mi41IDU5NyA1MTIgNTk3cy05Mi4xIDM5LjEtOTUuOCA4OC42Yy0uMyA0LjItMy45IDcuNC04LjEgNy40SDM2MGE4IDggMCAwIDEtOC04LjRjNC40LTg0LjMgNzQuNS0xNTEuNiAxNjAtMTUxLjZzMTU1LjYgNjcuMyAxNjAgMTUxLjZhOCA4IDAgMCAxLTggOC40em0yNC0yMjRhNDguMDEgNDguMDEgMCAwIDEgMC05NiA0OC4wMSA0OC4wMSAwIDAgMSAwIDk2eiIvPgogIDxwYXRoIGZpbGw9IiMzMzMiIGQ9Ik0yODggNDIxYTQ4IDQ4IDAgMSAwIDk2IDAgNDggNDggMCAxIDAtOTYgMHptMjI0IDExMmMtODUuNSAwLTE1NS42IDY3LjMtMTYwIDE1MS42YTggOCAwIDAgMCA4IDguNGg0OC4xYzQuMiAwIDcuOC0zLjIgOC4xLTcuNCAzLjctNDkuNSA0NS4zLTg4LjYgOTUuOC04OC42czkyIDM5LjEgOTUuOCA4OC42Yy4zIDQuMiAzLjkgNy40IDguMSA3LjRINjY0YTggOCAwIDAgMCA4LTguNEM2NjcuNiA2MDAuMyA1OTcuNSA1MzMgNTEyIDUzM3ptMTI4LTExMmE0OCA0OCAwIDEgMCA5NiAwIDQ4IDQ4IDAgMSAwLTk2IDB6Ii8+Cjwvc3ZnPg==
