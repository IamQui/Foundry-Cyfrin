## Deploy locally using Anvil/Forge

SIMULATION DEPLOYMENT

* forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 

ACTUAL DEPLOYMENT

* forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url http://127.0.0.1:8545 --account <keyname> --sender <senderaddress> --broadcast -vvvv
(Ex: forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url http://127.0.0.1:8545 --account testKey --sender 0xa0ee7a142d267c1f36714e4a8f75612f20a79720 --broadcast -vvvv)
* Enter keystore password:
(enter password - without password, won't run)

Short Version:

* forge script script/DeploySimpleStorage.s.sol --rpc-url $ANVIL_RPC_URL --account testKey --sender $ANVIL_SENDER --broadcast -vvvv

## Deploy to Sepolia

* need sepolia key 
* need sender for sepolia key
* need sepolia RPC

Long Version:

* forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url https://eth-sepolia.g.alchemy.com/v2/GHd9LC0UqmA7VnXafXnAMkyTZ0J9P-dz --account sepoliaKey --sender 0x6b686347a3f7a3f7fda330af7f1947006c3d452f --broadcast -vvvv

Short Version:

* forge script script/DeploySimpleStorage.s.sol --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --sender $SEPOLIA_SENDER --broadcast -vvvv