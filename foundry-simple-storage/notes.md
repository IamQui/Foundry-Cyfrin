forge create NameOfContract --rpc-url http://lskjlsjvjn --interactive

private key

forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545

To broadcast these transactions, add --broadcast and wallet configuration(s) to the previous command

forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0x2a871d0798f97d79848a013d4936a73bf4cc922c825d33c1cf7073dff6d409c6