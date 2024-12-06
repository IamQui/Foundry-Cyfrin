## Deploy locally using Anvil/Forge

SIMULATION DEPLOYMENT

* forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 

ACTUAL DEPLOYMENT

* forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url http://127.0.0.1:8545 --account <keyname> --sender <senderaddress> --broadcast -vvvv
(Ex: forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url http://127.0.0.1:8545 --account testKey --sender 0xa0ee7a142d267c1f36714e4a8f75612f20a79720 --broadcast -vvvv)
* Enter keystore password:
(enter password - without password, won't run)

## Deploy to Sepolia

* forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url https://eth-sepolia.g.alchemy.com/v2/GHd9LC0UqmA7VnXafXnAMkyTZ0J9P-dz --account testKey --sender 0xa0ee7a142d267c1f36714e4a8f75612f20a79720 --broadcast -vvvv


forge script script/deploySimpleStorage.s.sol --rpc-url=$Sepolia_RPC_URL --private-key=$PRIVATE_KEY --broadcast