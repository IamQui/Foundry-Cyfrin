build:; forge build

<!-- in terminal type make build -->

deploy-sepolia:
	forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv