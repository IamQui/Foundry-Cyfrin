mkdir testdirectory
cd testdirectory
forge init (or forge init --force)
/src/test.sol (make sol file in src folder)

## Compiling in Foundry

terminal
forge build -or- forge compile

## Deploying to a local blockchain using Anvil

MetaMask -> Settings -> Networks -> Add Network

* Network Name: LocalHost
* New RPC-URL: http://127.0.0.1:8545
* Chain ID: 31337 (Anvil's Chain ID)
* Currency symbol: ETH
* Block explorer URL (Optional): 

Save -> Switch to LocalHost

Copy one of the Private Keys from anvil
Import it into MetaMask

* Import account
* Enter your private key string here: 
  (Paste Private Key from anvil)
* Hit import


