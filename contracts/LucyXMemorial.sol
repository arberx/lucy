// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract LucyXMemorial is ERC721, ERC721URIStorage, Ownable {

	string public constant tokenName = "LucyXMemorial";
	string public constant tokenSymbol = "LUCYX";
	string public constant baseURI = "ipfs://bafybeib5giibbqhcoxhitiwralclooovoie3zu65mdo7ipq6ip74csekom/";

	string public constant pinataURI = "https://gateway.pinata.cloud/ipfs/QmSTXrXzLaRDYm9Qnc3uuPWue8VYu6dxT7gszfdQDA8iSW/";

	string public constant metaData = "ipfs://bafybeib5giibbqhcoxhitiwralclooovoie3zu65mdo7ipq6ip74csekom/LucyXMemorialMetaData.json";

	string public constant picture = "ipfs://bafybeic5msy6fp27b76fsdhtjeh2gekj6r2fuafjqoyu4vtj4v7lrwrama/";

	uint16 public constant maxSupply = 1;

	constructor() ERC721(tokenName, tokenSymbol) {
		mint(msg.sender, 1);
		_setTokenURI(1, metaData);
	}

	function mint(address to, uint256 tokenId) public onlyOwner {
		// Mint the token to the address
		_mint(to, tokenId);
	}

	function tokenURI(uint256 _tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
		return metaData;
	}

	function _burn(uint256 tokenId) internal virtual override(ERC721, ERC721URIStorage) {
	}
}
