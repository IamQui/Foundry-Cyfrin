forge create NameOfContract --rpc-url http://lskjlsjvjn --interactive

private key

forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545

To broadcast these transactions, add --broadcast and wallet configuration(s) to the previous command

forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0x2a871d0798f97d79848a013d4936a73bf4cc922c825d33c1cf7073dff6d409c6

// don't wanna paste private-key in so...

1. never use a .env
2. use erc-2335 to encript to json format

say 0x2a871d0798f97d79848a013d4936a73bf4cc922c825d33c1cf7073dff6d409c6 is your private key
(using terminal - cli)
cast wallet import TestKey --interactive
Enter private key:
paste in private key - testkey
Enter password:
put in password - REMEMBER IT! Vital
`TestKey` keystore was saved successfully. Address: 0xa0ee7a142d267c1f36714e4a8f75612f20a79720

NOW:

forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url http://127.0.0.1:8545 --account TestKey --sender 0xa0ee7a142d267c1f36714e4a8f75612f20a79720 --broadcast -vvvv

Enter keystore password:

ONCHAIN EXECUTION COMPLETE & SUCCESSFUL

(There's also a --password-file where you can use a password file but I don't know where or how to impliment that yet)

interact with a smart contract using CLI

cast send *CONTRACTADDRESS*0xb19b36b1456E65E3A6D514D3F715f204BD59f431 "nameOfFunctionYouWantToCall(typeOfVariable - uint256, int256, address, etc.)" infoYouWantContractToInteractWith --rpc-url http://127.0.0.1:8545 --interactive

Enter private key:

---

cast call *CONTRACTADDRESS*0xb19b36b1456E65E3A6D514D3F715f204BD59f431 "retrieve()"

get hex value => 0x0000000000000000000000000000000000000000000000000000000000000456

cast --to-base 0x0000000000000000000000000000000000000000000000000000000000000456 dec

1110

sepolia url = https://eth-sepolia.g.alchemy.com/v2/GHd9LC0UqmA7VnXafXnAMkyTZ0J9P-dz





