### MyToken (MTK):

* MyToken is a simple ERC-20–like token implemented using Solidity 0.8.x for learning and demonstration purposes. This project includes writing the token smart contract, deploying it on Remix, and testing all functions such as transfer, approve, and transferFrom.
* Token Details Name: MyToken
* Symbol: MTK
* Decimals: 18
* Total Supply: 1,000,000 MTK (1 million × 10^18)





### Features:

* custom ERC-20 style implementation
* Transfer tokens between addresses
* Approve spenders using allowance
* transferFrom functionality
* Transfer \& Approval events
* Token metadata (name, symbol, decimals, total supply)

&nbsp;

### 

### How to Deploy (Remix IDE):



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

### How to Use \& Test:



* Check Balance

Use: balanceOf(address)



* Transfer Tokens

transfer(to, amount)



* Example amount for 1 token with 18 decimals:

1000000000000000000



* Approve a Spender

approve(spender, amount)



* Transfer Using transferFrom

transferFrom(owner, to, amount)

Edge Cases (Should Fail)



* Transfer to zero address



* Transfer more than balance



* transferFrom without approval





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







### Screenshots Included:



* compilation.png



* deployment.png



* token-info.png



* transfer-test.png



* events.png
