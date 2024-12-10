# Blockchain Smart Ballot: A Secure Decentralized Voting System Built with Solidity

**Blockchain Smart Ballot** is a cutting-edge decentralized voting system powered by **blockchain technology** and developed with **Solidity**. It enables transparent, tamper-proof elections with real-time voting results, ensuring a **fair and secure voting process**. The system adheres to the **one-person-one-vote** principle, guaranteeing that every user can vote only once.
  
## Key Features of Blockchain Smart Ballot
* **Decentralized Voting on Blockchain**: Run your voting process on a blockchain, leveraging the immutability and security of blockchain technology.
* **One-Person-One-Vote**: Enforces the principle of fairness by allowing each account to cast a vote only once.
* **Real-Time Voting Results**: Display instant updates on voting results after each vote, ensuring transparency.
* **Secure and Transparent**: Built on blockchain, ensuring votes are immutable and tamper-proof, promoting trust in the voting process.

## Use Cases for Blockchain Voting
* **Elections**: Secure, transparent voting for public elections or corporate board elections.
* **Surveys and Polls**: Collect opinions with guaranteed fairness and security.
* **Decision-Making**: Use for internal company decisions or community voting on various matters.

## How Blockchain Smart Ballot Works
### Casting a Vote
*Set up your local blockchain environment using Ganache.
*Deploy the Voting Smart Contract on the blockchain.
*Follow the prompts in the interaction script to cast your vote.
*Ensure that you use a valid Ethereum address, as each account can vote only once.
### Checking Voting Results
* Get real-time voting updates instantly after each vote is cast.
* Use the interaction script to query the current voting results and track changes over time.

## Prerequisites
Before running Blockchain Smart Ballot, make sure you have the following installed:

* [Node.js](https://nodejs.org/en). (v16 or higher)
* npm or Yarn
* [Truffle](https://archive.trufflesuite.com/) (v5 or higher) for compiling and deploying smart contracts
* [Ganache](https://archive.trufflesuite.com/ganache/) for running a local blockchain

## Installation Instructions for Blockchain Smart Ballot
Follow these steps to set up Blockchain Smart Ballot on your local machine:
### 1. Clone the Repository:
```bash
git clone https://github.com/bhavinmultiqos/blockchain-smart-ballot.git
cd blockchain-smart-ballot
```
### 2. Install Dependencies:
```bash
npm install
```
### 3. Install Truffle (if not already installed):
```bash
npm install -g truffle
```
### 4. Install Ganache (if not already installed):
```bash
npm install -g ganache-cli
```
### 5. Start Ganache
```bash
ganache-cli --deterministic --port 8545
```
* --deterministic ensures that the same set of accounts is generated each time.
* --port 8545 specifies the port (you can change it if necessary).
Once you run these commands, Ganache will start up and provide an RPC endpoint that you can use in your Truffle configuration, typically http://127.0.0.1:8545.

### 6. Connect MetaMask to the local Ganache blockchain:
1. Open MetaMask and select the network dropdown at the top.
2. Choose "Custom RPC".
3. Enter the following details:
    - Network Name
    - New RPC URL
    - Chain ID
4. Save and switch to the local network.

## Smart Contract Deployment
### 1. Compile the Smart Contract:
```bash
truffle compile
```
### 2. Migrate the Smart Contract:
Update the migrations/2_deploy_contracts.js file with your smart contract deployment logic,
then run the migration:
```bash
truffle migrate
```

## Interact with the Smart Contract: 
You can interact with the deployed smart contract through the interaction script located in test-scripts/interact.js. The script allows you to:

* Cast Votes: Vote for your chosen candidate or option.
* View Voting Results: Check the real-time tally of votes.

Run the interaction script with the following command:
```bash
truffle exec test-scripts/interact.js
```
## Development:
### 1. Write Unit Tests
Create unit tests for the Voting Smart Contract in the test/ directory. You can test contract functionality using the following command:
```bash
truffle test
```
### 2. Modify the Contract:
The smart contract source code is located in contracts/Voting.sol. You can modify the contract as needed. After making changes, recompile and redeploy it.

## Contributing
We welcome contributions! If you have suggestions, feature requests, or bug fixes, please feel free to open an issue or submit a pull request.

## License
This project is licensed under the MIT License.

## Let Us know
For more details, visit [MultiQoS](https://multiqos.com/).


