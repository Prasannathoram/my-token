### MyToken (MTK):

* MyToken is a simple ERC-20–like token implemented using Solidity 0.8.x for learning and demonstration purposes. This project includes writing the token smart contract, deploying it on Remix, and testing all functions such as transfer, approve, and transferFrom.
* Token Details Name: MyToken
* Symbol: MTK
* Decimals: 18
* Total Supply: 1,000,000 MTK (1 million × 10^18)

### 

### What Are ERC-20 Tokens?

* ERC-20 is a standard for creating fungible tokens on Ethereum.
* It defines common functions like transfer, approve, allowance, and balanceOf,
* so wallets and applications can interact with your token easily.
* ERC-20 tokens act like a digital currency inside the Ethereum ecosystem.

### 

### 

### Features:

* custom ERC-20 style implementation
* Transfer tokens between addresses
* Approve spenders using allowance
* transferFrom functionality
* Transfer \& Approval events
* Token metadata (name, symbol, decimals, total supply)

 

### 

### 

### Deployment (Remix IDE):



1\. Open Remix: https://remix.ethereum.org

2\. Create a file named MyToken.sol inside the contracts folder

3\. Paste the full Solidity code

4\. Compile with Solidity version 0.8.x

5\. Go to Deploy \& Run Transactions

6\. Select “Remix VM (Prague)”

7\. Enter constructor value: 1000000

8\. Click Deploy

9\. The contract appears under Deployed Contracts



### 

### 

### Usage \& Test:



1.Check Balance

Use: balanceOf(address)



2.Transfer Tokens

transfer(to, amount)



3.Example amount for 1 token with 18 decimals:

1000000000000000000



4.Approve a Spender

approve(spender, amount)



5.Transfer Using transferFrom

transferFrom(owner, to, amount)



##### Edge Cases (Should Fail)



1. Transfer to zero address
2. Transfer more than balance
3. transferFrom without approval



### 

### Testing Performed



* Transfer between accounts → ✔️



* Balance updated correctly → ✔️



* Approve and TransferFrom → ✔️



* Transfer more than balance → ❌ (expected fail)



* Transfer without approval → ❌ (expected fail)



* Transfer to zero address → ❌ (expected fail)













### 

### Project Structure:



my-token/

│── contracts/

│     └── MyToken.sol

│── README.md

│── screenshots/

│     ├── compilation.png

│     ├── deployment.png

│     ├── token-info.png

│     ├── transfer-test.png

│     └── events.png

└── (optional) LEARNING.md

### 

### 

### Screenshots Included:



* compilation.png



* deployment.png



* token-info.png



* transfer-test.png



* events.png





### What I Learned?



* How ERC-20 tokens work



* How to deploy and test in Remix



* How allowance \& TransferFrom function



* How events track token activity



* How to structure a GitHub smart-contract project
